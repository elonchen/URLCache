//
//  DetailViewController.h
//  CachedImageDemo
//
//  Created by Hans Ospina on 12/8/14.
//  Copyright (c) 2014 maws. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
