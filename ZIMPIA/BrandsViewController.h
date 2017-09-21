//
//  BrandsViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/27/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrandsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *arrItems;
    IBOutlet UITableView *myTableView;
    UIFont *textFont;
    
    IBOutlet UIButton *cosmetics_button;
    IBOutlet UIButton *fashion_button;
    IBOutlet UIButton *sport_button;
    IBOutlet UIButton *electronics_button;
    IBOutlet UIButton *grocery_button;
}
- (IBAction)fashionClicked:(id)sender;
- (IBAction)groceryClicked:(id)sender;
- (IBAction)electronicsClicked:(id)sender;
- (IBAction)sportClicked:(id)sender;
- (IBAction)cosmeticsClicked:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *fashion_button;
@property (retain, nonatomic) IBOutlet UIButton *cosmetics_button;
@property (retain, nonatomic) IBOutlet UIButton *sport_button;
@property (retain, nonatomic) IBOutlet UIButton *electronics_button;
@property (retain, nonatomic) IBOutlet UIButton *grocery_button;

@end
