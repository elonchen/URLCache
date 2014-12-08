//
// Created by Hans Ospina on 12/6/14.
// Copyright (c) 2014 maws. All rights reserved.
//

#import "CacheManager.h"


@implementation CacheManager {

    NSCache *imagesCache;

}


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


- (BOOL)urlInCache:(NSURL *)url {
    return [imagesCache objectForKey:[url absoluteString]]!=nil;
}

- (NSData *)imageForUrl:(NSURL *)url {
    return [imagesCache objectForKey:[url absoluteString]];
}

- (void)addDataToCache:(NSData *)data withKey:(NSURL *)key {
    [imagesCache setObject:data forKey:[key absoluteString]];
}
@end