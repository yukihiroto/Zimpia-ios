//
//  SecondContinueViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/27/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "SecondContinueViewController.h"

@interface SecondContinueViewController ()

@end

@implementation SecondContinueViewController
@synthesize btnCountry;
@synthesize btnCity;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    addressTextfield.layer.cornerRadius = 5;
    countryTextfield.layer.cornerRadius = 5;
    cityTextfield.layer.cornerRadius = 5;
    zipcodeTextfield.layer.cornerRadius = 5;
    }
- (void)viewDidUnload {
    //    [btnSelect release];
    btnCountry = nil;
    [self setBtnCountry:nil];
    btnCity = nil;
    [self setBtnCity:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)dealloc {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)countryClicked:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"JAPAN", @"RUSSIA", @"TURKEY", @"GREECE", @"AUSTRALIA", @"INDIA", @"TAIWAN", @"SINGAPORE", @"MALAYSIA", @"BRAZIL",nil];
    NSArray * arrImage = [[NSArray alloc] init];
    
    if(dropDown == nil) {
        CGFloat f = 200;
        dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :arrImage :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }

}

- (IBAction)cityClicked:(id)sender {
    
    NSArray * arrcity = [[NSArray alloc] init];
    arrcity = [NSArray arrayWithObjects:@"CITY1", @"CITY2", @"CITY3", @"CITY4", @"CITY5", @"CITY6", @"CITY7", @"CITY8", @"CITY9", @"CITY10",nil];
    NSArray * arrImage = [[NSArray alloc] init];
    
    if(cityDown == nil) {
        CGFloat f = 200;
        cityDown = [[NIDropDown alloc]showDropDown:sender :&f :arrcity :arrImage :@"down"];
        cityDown.delegate = self;
    }
    else {
        [cityDown hideDropDown:sender];
        [self rel];
    }
    
}
- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
    NSLog(@"%@", btnCountry.titleLabel.text);
}

-(void)rel{
    //    [dropDown release];
    dropDown = nil;
}
@end
