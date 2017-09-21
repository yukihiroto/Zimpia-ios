//
//  SaleCellTableViewCell.h
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaleCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *salenewImage;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productnameLabel;
@property (weak, nonatomic) IBOutlet UILabel *newcostLabel;
@property (weak, nonatomic) IBOutlet UILabel *pastcostLabel;

@end
