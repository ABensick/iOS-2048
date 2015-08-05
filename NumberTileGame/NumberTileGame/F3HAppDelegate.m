//
//  F3HAppDelegate.m
//  NumberTileGame
//
//  Created by Austin Zheng on 3/22/14.
//
//
#import "Mixpanel.h"
#import "F3HAppDelegate.h"
#define MIXPANEL_TOKEN @"4d90c22062bff864702b60db1b6f702f"

@implementation F3HAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [Mixpanel sharedInstanceWithToken:MIXPANEL_TOKEN];
    
    // Later, you can get your instance with
    Mixpanel *mixpanel = [Mixpanel sharedInstance];
    // mixpanel identify: must be called before
    // people properties can be set
    [mixpanel identify:@"testingprofile"];
    [mixpanel track:@"App Launched" properties:@{
                                                @"Environment": @"Development",
                                                @"Platform": @"iOS"
                                                }];
    
    // Sets user 13793's "Plan" attribute to "Premium"
    [mixpanel.people set:@{@"Tester": @"true"}];
    [mixpanel.people increment:@{@"Sessions": @1}];
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
