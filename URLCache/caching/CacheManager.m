//
// Created by Hans Ospina on 12/6/14.
// Copyright (c) 2014 maws. All rights reserved.
// A generic cache manager to cache url resources(any type) in memory
//

#import "CacheManager.h"


@implementation CacheManager {
    NSCache *imagesCache;
}



// make this component a singleton so it can be re-used
+ (id)instance {
    static CacheManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });

    return manager;
}


- (instancetype)init {

    self = [super init];

    if (self) {
        imagesCache = [[NSCache alloc] init];
    }

    return self;
}


// Validate if the given key is in the cache
- (BOOL)urlInCache:(NSURL *)url {
    return [imagesCache valueForKey:[url absoluteString]]!=nil;
}

// Retrieve the data in the cache for the given url
- (NSData *)imageForUrl:(NSURL *)url {
    return [imagesCache valueForKey:[url absoluteString]];
}

// add a NSData item to the cache so it can be reused later.
- (void)addDataToCache:(NSData *)data withKey:(NSURL *)key {
    [imagesCache setObject:data forKey:[key absoluteString]];
}
@end