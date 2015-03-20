//
//  AppDelegate.m
//  Neuburg
//
//  Created by abruzzim on 3/16/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Pg2ViewController.h"
#import "Pg3ViewController.h"
#import "Pg4ViewController.h"
#import "Pg5ViewController.h"
#import "Pg6ViewController.h"
#import "Pg7ViewController.h"
#import "Pg8ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ViewController    *pageOneVC   = [[ViewController alloc] init];
    Pg2ViewController *pageTwoVC   = [[Pg2ViewController alloc] init];
    Pg3ViewController *pageThreeVC = [[Pg3ViewController alloc] init];
    Pg4ViewController *pageFourVC  = [[Pg4ViewController alloc] init];
    Pg5ViewController *pageFiveVC  = [[Pg5ViewController alloc] init];
    Pg6ViewController *pageSixVC   = [[Pg6ViewController alloc] init];
    Pg7ViewController *pageSevenVC = [[Pg7ViewController alloc] init];
    Pg8ViewController *pageEightVC = [[Pg8ViewController alloc] init];
    
    UINavigationController *pageOneNC   = [[UINavigationController alloc] initWithRootViewController:pageOneVC];
    UINavigationController *pageTwoNC   = [[UINavigationController alloc] initWithRootViewController:pageTwoVC];
    UINavigationController *pageThreeNC = [[UINavigationController alloc] initWithRootViewController:pageThreeVC];
    UINavigationController *pageFourNC  = [[UINavigationController alloc] initWithRootViewController:pageFourVC];
    UINavigationController *pageFiveNC  = [[UINavigationController alloc] initWithRootViewController:pageFiveVC];
    UINavigationController *pageSixNC   = [[UINavigationController alloc] initWithRootViewController:pageSixVC];
    UINavigationController *pageSevenNC = [[UINavigationController alloc] initWithRootViewController:pageSevenVC];
    UINavigationController *pageEightNC = [[UINavigationController alloc] initWithRootViewController:pageEightVC];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[pageEightNC, pageOneNC, pageTwoNC, pageThreeNC, pageFourNC, pageFiveNC, pageSixNC, pageSevenNC]
                                animated:YES];
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];    
    self.window.rootViewController = tabBarController;
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
