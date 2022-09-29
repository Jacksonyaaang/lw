/******************************************************
 * Copyright Grégory Mounié 2018                      *
 * This code is distributed under the GLPv3+ licence. *
 * Ce code est distribué sous la licence GPLv3+.      *
 ******************************************************/

#include <sys/mman.h>
#include <assert.h>
#include <stdint.h>
#include "mem_internals.h"

unsigned long knuth_mmix_one_round(unsigned long in)
{
    return in * 6364136223846793005UL % 1442695040888963407UL;
}

/*
 * Mark this memory from the location given by the user
 *
 * @para *ptr : the start of the bloc
 * @para size : size of memory 
 * @para k    : kind of memory
 *
 * @return    : the start of the memory
 * */
void *mark_memarea_and_get_user_ptr(void *ptr, unsigned long size, MemKind k)
{
    //calculate the value of mmix
    unsigned long mmix = knuth_mmix_one_round((unsigned long)ptr);
    mmix = mmix & ~0b11UL;
    mmix += k ;

    //put mmix and size in the right place
    uint64_t  *change = (uint64_t*)ptr;
    *change = size ;
    change ++;
    *change = mmix;
    change = (uint64_t * )((uint8_t *)ptr + size -16);
    *change = mmix;
    change ++;
    *change = size ;
    return (void *)((uint8_t *)ptr + 16);
}


/*
 * Check if the mark corresponds
 *
 * @para *ptr : the start of the memory
 *
 * @return    : the structure of allocation (Alloc) about the adress given by user
 * */
Alloc mark_check_and_get_alloc(void *ptr)
{
    uint64_t size_tete = *((uint64_t *)ptr -2) ;
    uint64_t mmix_tete =  *((uint64_t *)ptr -1);

    uint64_t  mmix_end = *(uint64_t *)((uint8_t *)ptr + size_tete -32 );
    uint64_t  size_end = *(uint64_t *)(((uint8_t *)ptr + size_tete) -24);

    //test of coherance
    assert(size_tete == size_end);
    assert(mmix_tete == mmix_end);

    MemKind k ;

    uint8_t memek_bits = 0b11;
    memek_bits = memek_bits & mmix_tete;

    k=memek_bits;
    Alloc a = {ptr-16,k,size_tete };
    return a;
}

unsigned long
mem_realloc_small() {
    assert(arena.chunkpool == 0);
    unsigned long size = (FIRST_ALLOC_SMALL << arena.small_next_exponant);
    arena.chunkpool = mmap(0,
			   size,
			   PROT_READ | PROT_WRITE | PROT_EXEC,
			   MAP_PRIVATE | MAP_ANONYMOUS,
			   -1,
			   0);
    if (arena.chunkpool == MAP_FAILED)
	handle_fatalError("small realloc");
    arena.small_next_exponant++;
    return size;
}

unsigned long
mem_realloc_medium() {
    uint32_t indice = FIRST_ALLOC_MEDIUM_EXPOSANT + arena.medium_next_exponant;
    assert(arena.TZL[indice] == 0);
    unsigned long size = (FIRST_ALLOC_MEDIUM << arena.medium_next_exponant);
    assert( size == (1 << indice));
    arena.TZL[indice] = mmap(0,
			     size*2, // twice the size to allign
			     PROT_READ | PROT_WRITE | PROT_EXEC,
			     MAP_PRIVATE | MAP_ANONYMOUS,
			     -1,
			     0);
    if (arena.TZL[indice] == MAP_FAILED)
	handle_fatalError("medium realloc");
    // align allocation to a multiple of the size
    // for buddy algo
    arena.TZL[indice] += (size - (((intptr_t)arena.TZL[indice]) % size));
    arena.medium_next_exponant++;
    return size; // lie on allocation size, but never free
}


// used for test in buddy algo
unsigned int
nb_TZL_entries() {
    int nb = 0;
    for(int i=0; i < TZL_SIZE; i++)
	if ( arena.TZL[i] )
	    nb ++;
    return nb;
}
