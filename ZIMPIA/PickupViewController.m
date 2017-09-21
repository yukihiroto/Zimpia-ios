//
//  PickupViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/30/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "PickupViewController.h"

@interface PickupViewController ()

@end

@implementation PickupViewController

@synthesize shoe_btn;
@synthesize bycle_btn;
@synthesize car_btn;
@synthesize bus_btn;

- (void)viewDidLoad {
    [super viewDidLoad];
    [bycle_btn setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


- (IBAction)shoe_clicked:(id)sender {
    [shoe_btn setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bus_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [car_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bycle_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    _shoe_img.image = [UIImage imageNamed:@"shoes_new_sel_icon"];
    _bycle_img.image = [UIImage imageNamed:@"bycle_icon"];
    _car_img.image = [UIImage imageNamed:@"car_icon"];
    _bus_img.image = [UIImage imageNamed:@"bus_icon"];
  
}

- (IBAction)bycle_clicked:(id)sender {
    [bycle_btn setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bus_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [car_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [shoe_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    _shoe_img.image = [UIImage imageNamed:@"shoes_new_icon"];
    _bycle_img.image = [UIImage imageNamed:@"bycle_sel_icon"];
    _car_img.image = [UIImage imageNamed:@"car_icon"];
    _bus_img.image = [UIImage imageNamed:@"bus_icon"];
}

- (IBAction)bus_clicked:(id)sender {
    [bus_btn setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [shoe_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [car_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bycle_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    _shoe_img.image = [UIImage imageNamed:@"shoes_new_icon"];
    _bycle_img.image = [UIImage imageNamed:@"bycle_icon"];
    _car_img.image = [UIImage imageNamed:@"car_icon"];
    _bus_img.image = [UIImage imageNamed:@"bus_sel_icon"];
}

- (IBAction)car_clicked:(id)sender {
    [car_btn setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bus_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [shoe_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [bycle_btn setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    _shoe_img.image = [UIImage imageNamed:@"shoes_new_icon"];
    _bycle_img.image = [UIImage imageNamed:@"bycle_icon"];
    _car_img.image = [UIImage imageNamed:@"car_sel_icon"];
    _bus_img.image = [UIImage imageNamed:@"bus_icon"];
}
@end
