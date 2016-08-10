//
//  ResultsViewController.m
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import "ResultsViewController.h"
#import "CarTableViewCell.h"
#import "Car.h"

@interface ResultsViewController ()

@end

@implementation ResultsViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self addObserver:self forKeyPath:@"resultsArray" options:NSKeyValueObservingOptionInitial context:nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 100000;
    self.slider.value = self.slider.maximumValue;
    
    self.navigationItem.title = @"Car Results";

}


#pragma mark - UISlider

- (IBAction)sliderValueChanged:(id)sender {
    self.maxPrice = self.slider.value;
    
    [self filterResults];
    [self.tableView reloadData];
}


#pragma mark - UITableView delegate and dataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resultsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Car *car = self.resultsArray[indexPath.row];
    
    CarTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CarTableViewCell"];
    
    cell.lblMake.text = car.make;
    cell.lblModel.text = car.model;
    cell.lblPrice.text = [NSString stringWithFormat:@"%ld", (long)car.price];
    if (car.specialDealText) {
        cell.lblSpecialDeal.text = car.specialDealText;
    }
    
    return cell;
}


#pragma mark - Filtering Results

- (void)filterResults {
    for (Car *car in self.resultsArray) {
        if (car.price > self.maxPrice) {
            [self.resultsArray removeObject:car];
        }
    }
    
}


#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if([keyPath isEqualToString:@"resultsArray"]) {
        
        [self.tableView reloadData];
    }

}


@end
