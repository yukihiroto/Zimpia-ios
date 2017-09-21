//
//  SecondContinueViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/27/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface SecondContinueViewController : UIViewController
{
    IBOutlet UIButton *btnCountry;
    NIDropDown *dropDown;
    
    IBOutlet UIButton *btnCity;
    NIDropDown *cityDown;
    IBOutlet UITextField *addressTextfield;
    IBOutlet UITextField *zipcodeTextfield;
    IBOutlet UITextField *countryTextfield;
    IBOutlet UITextField *cityTextfield;
    
}
@property (retain, nonatomic) IBOutlet UIButton *btnCountry;
@property (retain, nonatomic) IBOutlet UIButton *btnCity;

- (IBAction)countryClicked:(id)sender;
- (IBAction)cityClicked:(id)sender;
- (void)rel;
@end
