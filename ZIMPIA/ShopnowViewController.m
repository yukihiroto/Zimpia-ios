//
//  ShopnowViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "ShopnowViewController.h"
#include <stdlib.h>
#define RAND_FROM_TO(min, max) (min + arc4random_uniform(max - min + 1))
@interface ShopnowViewController ()
{
    NSArray *breadsPhoto;
}
@end

@implementation ShopnowViewController
@synthesize fashion_button;
@synthesize cosmetics_button;
@synthesize sport_button;
@synthesize electronics_button;
@synthesize grocery_button;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   //// self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    breadsPhoto = [NSArray arrayWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", @"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"1.png", nil];
    [fashion_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    { //Rotate the table view
        CGPoint oldCenter=myTableView.center;
        myTableView.frame=CGRectMake(0.0, 0.0, myTableView.bounds.size.height, myTableView.bounds.size.width);
        myTableView.transform=CGAffineTransformMakeRotation(-M_PI_2);
        myTableView.center=oldCenter;
    }
    myTableView.showsVerticalScrollIndicator = NO;
    
    r=1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [breadsPhoto count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"reusableIdentifier";
    UITableViewCell *cell=(UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if(nil==cell)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //cell.textLabel.font=textFont;
    }
    cell.imageView.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:indexPath.row]];
    cell.imageView.transform =CGAffineTransformMakeRotation(M_PI_2);
    [cell setBackgroundColor: [UIColor clearColor]];
    return cell;
}

- (IBAction)fashionClicked:(id)sender {
    
    [fashion_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [grocery_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [electronics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [sport_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [cosmetics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
}

- (IBAction)groceryClicked:(id)sender {
    
    [grocery_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [fashion_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [electronics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [sport_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [cosmetics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
}

- (IBAction)electronicsClicked:(id)sender {
    
    [electronics_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [grocery_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [fashion_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [sport_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [cosmetics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
}

- (IBAction)sportClicked:(id)sender {
    
    [sport_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [grocery_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [electronics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [fashion_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [cosmetics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
}

- (IBAction)cosmeticsClicked:(id)sender {
    
    [cosmetics_button setTitleColor:[UIColor colorWithRed:39/255.0 green:170/255.0 blue:224/255.0 alpha:1.0] forState:UIControlStateNormal];
    [grocery_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [electronics_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [sport_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    [fashion_button setTitleColor:[UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
    
}

- (IBAction)spanClicked:(id)sender {
  //  _mainbrand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:2]];
    r = r+1;
    int t=r % 17;
    if(t == 0)
        t=1;
    if(t>17)
        t=1;
     _top3brand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t]];
    if(t+1>17)
        t=1;
     _top1brand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t+1]];
    if(t+2>17)
        t=1;
     _topBrand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t+2]];
     _mainbrand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t+2]];
    if(t+3>17)
        t=1;
     _top2brand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t+3]];
    if(t+4>17)
        t=1;
     _top4brand.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:t+4]];
}
@end
