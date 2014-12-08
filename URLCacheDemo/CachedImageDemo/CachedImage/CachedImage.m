//
//  CachedImage.m
//  CachedImage
//
//  Created by Hans Ospina on 12/6/14.
//  Copyright (c) 2014 maws. All rights reserved.
//

#import "CachedImage.h"
#import "CacheManager.h"

@implementation UIImageView (CachedImage)


/**
* Override the setter to deal with the caching
*/
- (void)setupWithURL:(NSURL *)img completed:(void (^)(NSError *))completed {


    if (![[CacheManager instance] urlInCache:img]) {

        //avoid retain cycle
        __weak __typeof__(self) weakSelf = self;

        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:img];

        NSLog(@"%@", [img absoluteString]);
        [NSURLConnection sendAsynchronousRequest:request
                                           queue:[NSOperationQueue mainQueue]
                               completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {


                                   __typeof__(self) strongSelf = weakSelf;

                                   if (!error) {



                                       strongSelf.image = [[UIImage alloc] initWithData:data];
                                       completed(error);
                                       NSLog(@"saving with key: %@", [img absoluteString]);
                                       [[CacheManager instance] addDataToCache:data withKey:img];

                                   } else {
                                       NSLog(@"%@", error);
                                   }
                               }];

    } else {
        NSLog(@"Cached with key: %@", [img absoluteString]);
        self.image = [[UIImage alloc] initWithData:[[CacheManager instance] imageForUrl:img]];
        completed(nil);
    }

}


@end
