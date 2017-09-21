//
//  MorecustomViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/31/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ACMagnifyingGlass;
@interface MorecustomViewController : UIViewController

@property (nonatomic, retain) ACMagnifyingGlass *magnifyingGlass;
@property (nonatomic, assign) CGFloat magnifyingGlassShowDelay;

@end
