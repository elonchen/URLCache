//
//  CachedImage.h
//  CachedImage
//
//  Created by Hans Ospina on 12/6/14.
//  Copyright (c) 2014 maws. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CachedImage)


- (void)setupWithURL:(NSURL *)url completed:(void (^)(NSError *))completed;

@end
