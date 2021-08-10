//
//  ASGEphemerisGlue.m
//  SwissEphemeris
//

#import "ASGEphemerisGlue.h"
#import <Foundation/Foundation.h>
#import "swephexp.h"
#import "sweph.h"

static NSBundle *_SWEDataFilesGetBundle() {
    return [NSBundle bundleWithIdentifier:@"com.varianceinteractive.ASGEphemeris"];
}

static NSURL *SWEDataFilesGetFrameworkURL() {
    return _SWEDataFilesGetBundle().resourceURL;
}

void _ASGELibraryInitialize() {
    swe_set_ephe_path((char *)SWEDataFilesGetFrameworkURL().fileSystemRepresentation);
}

void _ASGELibraryFinalize() {
    swe_close();
}
