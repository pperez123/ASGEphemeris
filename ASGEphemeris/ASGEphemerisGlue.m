//
//  ASGEphemerisGlue.m
//  SwissEphemeris
//

#import "ASGEphemerisGlue.h"
#import <Foundation/Foundation.h>
#import "swephexp.h"
#import "sweph.h"

static NSBundle *_SWEDataFilesGetBundle(void) {
    return [NSBundle bundleWithIdentifier:@"com.varianceinteractive.ASGEphemeris"];
}

static NSURL *SWEDataFilesGetFrameworkURL(void) {
    return _SWEDataFilesGetBundle().resourceURL;
}

void _ASGELibraryInitialize(void) {
    swe_set_ephe_path((char *)SWEDataFilesGetFrameworkURL().fileSystemRepresentation);
}

void _ASGELibraryFinalize(void) {
    swe_close();
}
