//
//  CartCellTableViewCell.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "CartCellTableViewCell.h"

@implementation CartCellTableViewCell

@synthesize productImage = _productImage;
@synthesize costLabel = _costLabel;
@synthesize colorLabel = _colorLabel;
@synthesize sizeLabel = _sizeLabel;
@synthesize priceLabel = _priceLabel;
@synthesize amountLabel = _amountLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
