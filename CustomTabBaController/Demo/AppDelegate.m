//
//  AppDelegate.m
//  CustomTabBaController
//
//  Created by Andrew Seregin on 24.07.2018.
//  Copyright © 2018 Andrew Seregin. All rights reserved.
//

#import "AppDelegate.h"
#import "PlayerTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    BEExtendedTabBarController  *rootViewController = [PlayerTabBarViewController new];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    
    BETabBarItem *itemOne = [[BETabBarItem alloc] initWithTitle:@"window"
                                                          image: [UIImage imageNamed:@"window"]
                                                            tag:1055];
    itemOne.associatedController = [UIViewController new];
    itemOne.associatedController.view.backgroundColor = UIColor.greenColor;

    BETabBarItem *itemTwo = [[BETabBarItem alloc] initWithTitle:@"paper_piece"
                                                          image: [UIImage imageNamed:@"paper_piece"]
                                                            tag:1056];
    itemTwo.associatedController = [UIViewController new];
    itemTwo.associatedController.view.backgroundColor = UIColor.brownColor;
    [rootViewController setItems:@[itemOne,
                                   itemTwo]];
    

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end