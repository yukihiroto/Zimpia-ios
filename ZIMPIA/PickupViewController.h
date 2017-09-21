//
//  PickupViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/30/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickupViewController : UIViewController
{
    IBOutlet UIButton *shoe_btn;
    IBOutlet UIButton *bycle_btn;

    IBOutlet UIButton *car_btn;
    IBOutlet UIButton *bus_btn;
}

@property (retain, nonatomic) IBOutlet UIButton *shoe_btn;
@property (retain, nonatomic) IBOutlet UIButton *bycle_btn;
@property (retain, nonatomic) IBOutlet UIButton *bus_btn;
@property (retain, nonatomic) IBOutlet UIButton *car_btn;

- (IBAction)shoe_clicked:(id)sender;
- (IBAction)bycle_clicked:(id)sender;
- (IBAction)bus_clicked:(id)sender;
- (IBAction)car_clicked:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *shoe_img;
@property (strong, nonatomic) IBOutlet UIImageView *bycle_img;
@property (strong, nonatomic) IBOutlet UIImageView *bus_img;
@property (strong, nonatomic) IBOutlet UIImageView *car_img;

@end
