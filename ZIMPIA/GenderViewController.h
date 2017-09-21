//
//  GenderViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/25/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface GenderViewController : UIViewController<NIDropDownDelegate>
{
    IBOutlet UIButton *btnAge;
    IBOutlet UIButton *btnShirt;
    IBOutlet UIButton *btnShirtsize;
    IBOutlet UIButton *trouser;
    IBOutlet UIButton *trousersize;
    IBOutlet UIButton *shoe;
    IBOutlet UIButton *shoesize;
    NIDropDown *dropDown;
    NIDropDown *shirtDown;
}
@property (strong, nonatomic) IBOutlet UIImageView *femalephoto;
@property (strong, nonatomic) IBOutlet UIImageView *malephoto;
@property (strong, nonatomic) IBOutlet UIImageView *age;
@property (strong, nonatomic) IBOutlet UIImageView *shirt;
@property (strong, nonatomic) IBOutlet UIImageView *shirtsize;
@property (strong, nonatomic) IBOutlet UIImageView *trouser;
@property (strong, nonatomic) IBOutlet UIImageView *trousersize;
@property (strong, nonatomic) IBOutlet UIImageView *shoe;
@property (strong, nonatomic) IBOutlet UIImageView *shoesize;


@property (retain, nonatomic) IBOutlet UIButton *btnAge;
@property (retain, nonatomic) IBOutlet UIButton *btnShirt;
@property (retain, nonatomic) IBOutlet UIButton *btnShirtsize;

- (IBAction)maleClicked:(id)sender;

- (IBAction)ageClicked:(id)sender;
- (IBAction)shirtClicked:(id)sender;
- (IBAction)shirtsizeClicked:(id)sender;
- (IBAction)trouserClicked:(id)sender;
- (IBAction)trousersizeClicked:(id)sender;
- (IBAction)shoeClicked:(id)sender;
- (IBAction)shoesizeClicked:(id)sender;


- (void)rel;
- (void)relshirt;

@end
