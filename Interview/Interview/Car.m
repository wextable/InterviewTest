//
//  Car.m
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithMake:(NSString *)make model:(NSString *)model price:(NSInteger)price
{
    self = [super init];
    if (self) {
        self.make = make;
        self.model = model;
        self.price = price;
    }
    return self;
}

- (instancetype)initWithMake:(NSString *)make model:(NSString *)model price:(NSInteger)price specialDealText:(NSString *)specialDealText {
    self = [super init];
    if (self) {
        self.make = make;
        self.model = model;
        self.price = price;
        self.specialDealText = specialDealText;
    }
    return self;
}

@end
