//
//  FirstContinueViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/26/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface FirstContinueViewController : UIViewController
{
    IBOutlet UIButton *btnCountry;
    NIDropDown *dropDown;
    IBOutlet UIButton *btnCity;
    NIDropDown *cityDown;
    
    IBOutlet UITextField *nameTextfield;
    
    IBOutlet UITextField *addressTextfiled;

    IBOutlet UITextField *cityTextfield;
    IBOutlet UITextField *countryTextfield;
    IBOutlet UITextField *cvvTextfield;
    IBOutlet UITextField *dateTextfield;
    IBOutlet UITextField *cardnumberTextfield;
    IBOutlet UITextField *cardholderTextfield;
    IBOutlet UITextField *zipcodeTextfield;
    IBOutlet UITextField *emailTextfield;
    IBOutlet UITextField *phoneTextfield;
}
@property (retain, nonatomic) IBOutlet UIButton *btnCountry;
@property (retain, nonatomic) IBOutlet UIButton *btnCity;

- (IBAction)countryClicked:(id)sender;
- (void)rel;
- (IBAction)cityClicked:(id)sender;


- (IBAction)visaClicked:(id)sender;
- (IBAction)masterClicked:(id)sender;
- (IBAction)paypalClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *visaImage;
@property (strong, nonatomic) IBOutlet UIImageView *masterImage;
@property (strong, nonatomic) IBOutlet UIImageView *paypalImage;

@end
