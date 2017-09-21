//
//  SaleCellTableViewCell.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "SaleCellTableViewCell.h"

@implementation SaleCellTableViewCell

@synthesize productImage = _productImage;
@synthesize salenewImage = _salenewImage;
@synthesize productnameLabel = _productnameLabel;
@synthesize newcostLabel = _newcostLabel;
@synthesize pastcostLabel = _pastcostLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
