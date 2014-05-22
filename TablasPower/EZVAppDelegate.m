//
//  EZVAppDelegate.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVAppDelegate.h"
#import "Vino.h"
#import "EZVViewVinos.h"

@implementation EZVAppDelegate


-(NSArray *) listaDeVinos{
    return @[[[Vino alloc]initWithVino:@"Aalto" andDO:@"Ribera de Duero" andCosecha:@"2006"],
             [[Vino alloc]initWithVino:@"Marques riscal" andDO:@"Rueda" andCosecha:@"2012"],
             [[Vino alloc]initWithVino:@"PEsquera" andDO:@"LA Rioja" andCosecha:@"2006"]
             ];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    EZVViewVinos *controller = [[EZVViewVinos alloc]initWithStyle:UITableViewStylePlain AndModel:[self listaDeVinos]];
    
    UINavigationController *nv = [[UINavigationController alloc]initWithRootViewController:controller];
    
    
    self.window.rootViewController = nv;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
