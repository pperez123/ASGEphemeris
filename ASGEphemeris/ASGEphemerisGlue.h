//
//  ASGEphemerisGlue.h
//  SwissEphemeris
//

#ifndef __ASGEphemerisGlue__
#define __ASGEphemerisGlue__

#include <stdio.h>
#include <stdbool.h>

// =========
#pragma mark Preprocessor macro's
// =========
#ifndef ASGE_PRIVATE_EXTERN
#define ASGE_PRIVATE_EXTERN __private_extern__
#endif

#ifndef ASGE_PRIVATE
#ifdef DEBUG
    #define ASGE_PRIVATE ASGE_PRIVATE_EXTERN
#else
    #define ASGE_PRIVATE __attribute__((__visibility__("hidden")))
#endif
#endif

#ifndef ASGE_CONSTRUCTOR
#define ASGE_CONSTRUCTOR __attribute__((constructor))
#endif

#ifndef ASGE_DESTRUCTOR
#define ASGE_DESTRUCTOR __attribute__((destructor))
#endif

// =========
#pragma mark Library lifecycle
// =========
ASGE_PRIVATE ASGE_CONSTRUCTOR
void _ASGELibraryInitialize();

ASGE_PRIVATE ASGE_DESTRUCTOR
void _ASGELibraryFinalize();

#endif /* __ASGEphemerisGlue__ */
