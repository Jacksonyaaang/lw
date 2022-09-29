/******************************************************
 * Copyright Grégory Mounié 2018                      *
 * This code is distributed under the GLPv3+ licence. *
 * Ce code est distribué sous la licence GPLv3+.      *
 ******************************************************/

#include <assert.h>
#include "mem_internals.h"

static void **temp ;
static void *ptr ;

// allocate a small bloc of memory of size CHUNKSIZE
void *emalloc_small(unsigned long size) {

    assert(size<=SMALLALLOC);
    unsigned long step = CHUNKSIZE +8;

    // allocate and initialize the linked list contained in arena.chunkpool
    if (arena.chunkpool == NULL) {
        unsigned long l=mem_realloc_small();
        void *next=arena.chunkpool;
        for(int i=1; i<(l/step); i++){
            temp = next;
            next += step;
            *temp =next;
        }
        temp=next;
        *temp=NULL;
    }
    ptr = arena.chunkpool;
    void **a=ptr;
    arena.chunkpool =(*a==NULL)? 0:(arena.chunkpool+step);
    ptr+=8;
    ptr = mark_memarea_and_get_user_ptr(ptr, CHUNKSIZE, SMALL_KIND);
    return ptr;
}
// replace a bloc of memory a in arena.chunkpool
void efree_small(Alloc a) {
    ptr -= sizeof(void *);
    void **tete = a.ptr;
    *tete = arena.chunkpool;
    arena.chunkpool=tete;
}