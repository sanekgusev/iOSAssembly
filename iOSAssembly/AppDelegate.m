//
//  AppDelegate.m
//  iOSAssembly
//
//  Created by Aleksandr Gusev on 2/11/18.
//  Copyright © 2018 Duolingo. All rights reserved.
//

#import "AppDelegate.h"
#import "BestestWeekdayViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    calendar.timeZone = [NSTimeZone localTimeZone];
    calendar.locale = [NSLocale currentLocale];

    _window.rootViewController = [[BestestWeekdayViewController alloc] initWithCalendar:calendar];

    [_window makeKeyAndVisible];

    return YES;
}

@end
