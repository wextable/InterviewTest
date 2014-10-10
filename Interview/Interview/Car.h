//
//  Car.h
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, strong) NSString *specialDealText;

- (instancetype)initWithMake:(NSString *)make model:(NSString *)model price:(NSInteger)price;
- (instancetype)initWithMake:(NSString *)make model:(NSString *)model price:(NSInteger)price specialDealText:(NSString *)specialDealText;

@end
