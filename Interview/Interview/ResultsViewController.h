//
//  ResultsViewController.h
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) NSMutableArray *resultsArray;
@property (nonatomic, assign) NSInteger maxPrice;

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) IBOutlet UISlider *slider;


@end
