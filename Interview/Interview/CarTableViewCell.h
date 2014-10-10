//
//  CarTableViewCell.h
//  Interview
//
//  Created by Wesley St. John on 10/10/14.
//  Copyright (c) 2014 mobileforming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *lblMake;
@property (nonatomic, strong) IBOutlet UILabel *lblModel;
@property (nonatomic, strong) IBOutlet UILabel *lblPrice;
@property (nonatomic, strong) IBOutlet UILabel *lblSpecialDeal;

@end
