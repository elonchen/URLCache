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
- (void)setImageURL:(NSURL *)imageURL {
    _imageURL = imageURL;

    if (![[CacheManager instance] urlInCache:imageURL]) {

        //avoid retain cycle
        __weak __typeof__(self) weakSelf = self;

        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:imageURL];
        //Perform the request Asynchronously
        [NSURLConnection sendAsynchronousRequest:request
                                           queue:[NSOperationQueue mainQueue]
                               completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {


                                   __typeof__(self) strongSelf = weakSelf;

                                   if (!error) {
                                       strongSelf.image = [[UIImage alloc] initWithData:data];
                                       [[CacheManager instance] addDataToCache:data withKey:strongSelf.imageURL];

                                   } else {
                                       NSLog(@"%@", error);
                                   }
                               }];

    } else {
        // If the image is cached then just place it and display it
        self.image = [[UIImage alloc] initWithData:[[CacheManager instance] imageForUrl:imageURL]];
    }

}


@end
