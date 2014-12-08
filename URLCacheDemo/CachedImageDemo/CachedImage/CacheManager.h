//
// Created by Hans Ospina on 12/6/14.
// Copyright (c) 2014 maws. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CacheManager : NSObject

+ (id)instance;

- (BOOL)urlInCache:(NSURL *)url;

- (NSData *)imageForUrl:(NSURL *)url;

- (void)addDataToCache:(NSData *)data withKey:(NSURL *)key;
@end