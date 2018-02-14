//
//  BestestWeekdayViewController.h
//  iOSAssembly
//
//  Created by Aleksandr Gusev on 2/11/18.
//  Copyright © 2018 Duolingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BestestWeekdayViewController : UIViewController

- (instancetype)initWithCalendar:(NSCalendar *)calendar NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

@end

