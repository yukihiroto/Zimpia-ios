//
//  DeliveryViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "DeliveryViewController.h"
#import "PickupViewController.h"
@interface DeliveryViewController ()

@end

@implementation DeliveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)pickupClicked:(id)sender {
    _pickupImage.image = [UIImage imageNamed:@"radio_button.png"];
    _expressImage.image = [UIImage imageNamed:@"radio_sel_button.png"];
    
}

- (IBAction)expressClicked:(id)sender {
    _pickupImage.image = [UIImage imageNamed:@"radio_sel_button.png"];
    _expressImage.image = [UIImage imageNamed:@"radio_button.png"];
}


@end
