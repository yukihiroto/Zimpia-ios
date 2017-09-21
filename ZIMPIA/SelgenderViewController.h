//
//  SelgenderViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/26/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface SelgenderViewController : UIViewController
{
    IBOutlet UIButton *btnAge;
    IBOutlet UIButton *btnShirtsize;
    IBOutlet UIButton *btnTrouser;
    IBOutlet UIButton *btnTrousersize;
    IBOutlet UIButton *btnShoesize;
    NIDropDown *dropDown;

    IBOutlet UIButton *btnShirt;
    NIDropDown *shirtDown;
    
    IBOutlet UIButton *btnShoe;
    NIDropDown *shoeDown;
}
- (IBAction)maleClicked:(id)sender;
- (IBAction)femaleClicked:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *malephoto;
@property (strong, nonatomic) IBOutlet UIImageView *femalephoto;
@property (strong, nonatomic) IBOutlet UIImageView *male_icon;
@property (strong, nonatomic) IBOutlet UIImageView *shirt_icon;
@property (strong, nonatomic) IBOutlet UIImageView *trouser_icon;
@property (strong, nonatomic) IBOutlet UIImageView *shoe_icon;

@property (retain, nonatomic) IBOutlet UIButton *btnAge;
@property (retain, nonatomic) IBOutlet UIButton *btnShirt;
@property (retain, nonatomic) IBOutlet UIButton *btnShirtsize;
@property (retain, nonatomic) IBOutlet UIButton *btnTrouser;
@property (retain, nonatomic) IBOutlet UIButton *btnTrousersize;
@property (retain, nonatomic) IBOutlet UIButton *btnShoesize;
@property (retain, nonatomic) IBOutlet UIButton *btnShoe;

- (IBAction)ageClicked:(id)sender;
- (IBAction)shirtsizeClicked:(id)sender;
- (IBAction)trouserClicked:(id)sender;
- (IBAction)shirtClicked:(id)sender;
- (IBAction)shoeClicked:(id)sender;
- (IBAction)shoesizeClicked:(id)sender;



- (void)rel;

@end
