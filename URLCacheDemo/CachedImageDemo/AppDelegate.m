//
//  AppDelegate.m
//  CachedImageDemo
//
//  Created by Hans Ospina on 12/8/14.
//  Copyright (c) 2014 maws. All rights reserved.
//


#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MasterViewController *tvc = [[MasterViewController alloc] initWithStyle:UITableViewStylePlain];
    tvc.items = @[@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74",@"http://placehold.it/111x61",@"http://placehold.it/112x62",@"http://placehold.it/113x63", @"http://placehold.it/114x64", @"http://placehold.it/115x65", @"http://placehold.it/116x66",@"http://placehold.it/117x67", @"http://placehold.it/118x68", @"http://placehold.it/119x69",  @"http://placehold.it/120x70", @"http://placehold.it/121x71",@"http://placehold.it/122x72", @"http://placehold.it/123x73", @"http://placehold.it/124x74"];
    self.window.rootViewController = tvc;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end