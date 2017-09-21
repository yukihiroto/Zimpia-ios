//
//  DeliveryViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeliveryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *pickupImage;
@property (weak, nonatomic) IBOutlet UIImageView *expressImage;
- (IBAction)pickupClicked:(id)sender;
- (IBAction)expressClicked:(id)sender;

@end
