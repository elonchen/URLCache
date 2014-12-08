//
//  MasterViewController.m
//  CachedImageDemo
//
//  Created by Hans Ospina on 12/6/14.
//  Copyright (c) 2014 maws. All rights reserved.
//


#import "MasterViewController.h"
#import "DetailViewController.h"
#import "CachedImage.h"


@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Item %@, indexPath %d,%d",[self.items objectAtIndex:indexPath.row],indexPath.section,indexPath.row);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"CellIdent";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }

    NSString *tmp=self.items[(NSUInteger) indexPath.row];

    [cell.imageView setupWithURL:[NSURL URLWithString:tmp] completed:^(NSError *error) {
        // access using tableview's methods instead of directly
        [[tableView cellForRowAtIndexPath:indexPath] setNeedsLayout];
    }];


    cell.textLabel.text = [tmp stringByReplacingOccurrencesOfString:@"http://placehold.it/" withString:@""];;
    return cell;
}

@end
