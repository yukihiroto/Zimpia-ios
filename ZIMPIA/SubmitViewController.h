//
//  SubmitViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/27/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NMRangeSlider.h"

@interface SubmitViewController : UIViewController
@property (weak, nonatomic) IBOutlet NMRangeSlider *labelSlider;
@property (weak, nonatomic) IBOutlet UILabel *lowerLabel;
@property (weak, nonatomic) IBOutlet UILabel *upperLabel;
- (IBAction)labelSliderChanged:(NMRangeSlider *)sender;


@end

