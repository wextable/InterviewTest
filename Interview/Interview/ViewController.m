//
//  ViewController.m
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "ResultsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([identifier isEqualToString:@"GetResultsSegue"]) {
        
        if (self.txtMaxPrice.text.length == 0) {
            return NO;
        }
        
    }
    
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"GetResultsSegue"]) {
        
        NSArray *carArray = @[[[Car alloc] initWithMake:@"Ford" model:@"Mustang" price:32000],
                              [[Car alloc] initWithMake:@"Dodge" model:@"Challenger" price:30000 specialDealText:@"Must go today!"],
                              [[Car alloc] initWithMake:@"Dodge" model:@"Charger" price:27000],
                              [[Car alloc] initWithMake:@"Chevrolet" model:@"Camaro" price:28000],
                              [[Car alloc] initWithMake:@"Chevrolet" model:@"Nova" price:13000 specialDealText:@"An Oldie, but a Goodie!"],
                              [[Car alloc] initWithMake:@"Ford" model:@"F40" price:59000 specialDealText:@"Don't miss this one of a kind supercar! A rare and beautiful blend of style and power!"],
                              [[Car alloc] initWithMake:@"Toyota" model:@"Camry" price:21000 specialDealText:@"Great Value!"],
                              [[Car alloc] initWithMake:@"Nissan" model:@"Pathfinder" price:36000]
                              ];
        
        ResultsViewController *resultsVC = segue.destinationViewController;
        resultsVC.resultsArray = [carArray mutableCopy];
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        resultsVC.maxPrice = [formatter numberFromString:self.txtMaxPrice.text];
        
    }
    
}


@end
