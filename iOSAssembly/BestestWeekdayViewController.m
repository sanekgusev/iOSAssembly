//
//  BestestWeekdayViewController.m
//  iOSAssembly
//
//  Created by Aleksandr Gusev on 2/11/18.
//  Copyright © 2018 Duolingo. All rights reserved.
//

#import "BestestWeekdayViewController.h"

@interface BestestWeekdayViewController ()

@property (nonatomic, strong) NSCalendar *calendar;
@property (nonatomic, strong) UILabel *wednesdayLabel;

@end

@implementation BestestWeekdayViewController

- (instancetype)initWithCalendar:(NSCalendar *)calendar {
    if (self = [super initWithNibName:nil bundle:nil]) {
        _calendar = calendar;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.wednesdayLabel = [[UILabel alloc] init];
    self.wednesdayLabel.numberOfLines = 0;
    self.wednesdayLabel.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:self.wednesdayLabel];

    [NSLayoutConstraint activateConstraints:@[
                                              [self.wednesdayLabel.centerXAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.centerXAnchor],
                                              [self.wednesdayLabel.centerYAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.centerYAnchor],
                                              [self.wednesdayLabel.leadingAnchor constraintGreaterThanOrEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor],
                                              [self.wednesdayLabel.leadingAnchor constraintLessThanOrEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor]
                                              ]];

    self.wednesdayLabel.font = [UIFont systemFontOfSize:36 weight:UIFontWeightBlack];

    NSDate *date = [NSDate new];
    NSInteger weekday = [self weekdayFromDate:date];
    NSInteger day = [self dayFromDate:date];

    NSString *dayName = [self dayNameForWeekday:weekday day:day];

    self.wednesdayLabel.text = [NSString stringWithFormat:@"It's %@, the bestest of all days! Or is it?🤔", dayName];
}

- (NSInteger)weekdayFromDate:(NSDate *)date {
    return [self.calendar component:NSCalendarUnitWeekday fromDate:date];
}

- (NSInteger)dayFromDate:(NSDate *)date {
    return [self.calendar component:NSCalendarUnitDay fromDate:date];
}

- (NSString *)dayNameForWeekday:(NSInteger)weekday day:(NSInteger)day {
    if (weekday == 5 && day == 13) {
        return @"Friday the 13th 👹";
    }
    return [self.calendar weekdaySymbols][weekday - 1];
}

@end
