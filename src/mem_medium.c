/******************************************************
 * Copyright Grégory Mounié 2018                      *
 * This code is distributed under the GLPv3+ licence. *
 * Ce code est distribué sous la licence GPLv3+.      *
 ******************************************************/

#include <stdint.h>
#include <assert.h>
#include "mem_internals.h"

static void** temp;
static void *fre;
unsigned int puiss2(unsigned long size) {
    unsigned int p=0;
    size = size -1; // allocation start in 0
    while(size) {   // get the largest bit
        p++;
        size >>= 1;
    }
    if (size > (1 << p))
	p++;
    return p;
}
/*
 * @para i : the index of the bloc
 *
 * @return    : the index of the first free bloc
 * */
uint8_t first_index(uint8_t i){
    if (arena.TZL[i])
        return i;
    else if (i ==(FIRST_ALLOC_MEDIUM_EXPOSANT + arena.medium_next_exponant)){
        mem_realloc_medium();
        void **temp=arena.TZL[i];
        *temp=NULL;
        return i;
    }
    return first_index(i+1);
}
/*
 * allocate a bloc of memory of medium size
 *
 * @para size : size of the medium memory
 *
 * */
void *emalloc_medium(unsigned long size){
    size+=32 + sizeof(void *);
    assert(size < LARGEALLOC);
    assert(size > SMALLALLOC);
    uint8_t index = puiss2(size);
    uint8_t first = first_index(index);
    fre = arena.TZL[first];
    temp=arena.TZL[first];
    arena.TZL[first]=*temp;
    while(first>index){
        first--;
        arena.TZL[first]=(void*)((uint8_t*)fre+(1<<first));
        temp=arena.TZL[first];
        *temp=NULL;
    }
    void* ptr ;
    fre+=8;
    ptr=mark_memarea_and_get_user_ptr(fre,(1<<index)-8,MEDIUM_KIND);
    return ptr;
}

/*
 * check if arena.TZL[index] contains buddy
 *
 * @para buddy :  pointer to the buddy
 * @para index : index where we can look for buddy
 *
 * @return : 0 if TZL is NULL; 1 if match; 2 if no match;
 *
 * */
int check(void* buddy,unsigned long index){
    if(arena.TZL[index]==NULL){return 0;}
    temp=arena.TZL[index];
    do{
        if(buddy==temp){return 1;}
        temp=*temp;
    }while(temp!= NULL);
    return 2;
}

/*
 * delete a memory(ptr) from TZL[index]
 *
 * @para *ptr : the address that should be deleted
 * @para index :index where ptr is 
 *
 * */
void delete(void *ptr,unsigned long index){
    temp=arena.TZL[index];
    void **prev=temp;
    if (temp==ptr)
        arena.TZL[index]=*temp;
    else
        while(temp!=NULL){
            if (temp==ptr)
                *prev=*temp;
            prev=temp;
            temp=*temp;
        }
}
/*
 * desallocate a from arena.TZL
 *
 * @para a : the alloc which should be freed
 *
 * */
void efree_medium(Alloc a) {
    unsigned long index = puiss2(a.size+8);
    a.ptr-=8;
    void** tete;
    void* buddy =(void*)(((unsigned long)a.ptr)^(1<<index));
    int n = check(buddy,index);
    if(n==1){
        a.size+=a.size+sizeof(void*);
        delete(buddy,index);
        a.ptr=((unsigned long)a.ptr<(unsigned long)buddy)? a.ptr:buddy;
        a.ptr+=8;
        efree_medium(a);
    }
    else if(n==0){
        arena.TZL[index]=a.ptr;
        tete =arena.TZL[index];
        *tete=NULL;
    }
    else{
        tete = a.ptr;
        *tete = arena.TZL[index];
        arena.TZL[index]=tete;
    }
}
