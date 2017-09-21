//
//  ShopnowViewController.h
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShopnowViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{

    IBOutlet UITableView *myTableView;

    
    IBOutlet UIButton *cosmetics_button;
    IBOutlet UIButton *sport_button;
    IBOutlet UIButton *electronics_button;
    IBOutlet UIButton *grocery_button;
    IBOutlet UIButton *fashion_button;
    
    IBOutlet UIButton *span_button;
    NSInteger r;
    
}
- (IBAction)fashionClicked:(id)sender;
- (IBAction)groceryClicked:(id)sender;
- (IBAction)electronicsClicked:(id)sender;
- (IBAction)sportClicked:(id)sender;
- (IBAction)cosmeticsClicked:(id)sender;

- (IBAction)spanClicked:(id)sender;


@property (retain, nonatomic) IBOutlet UIButton *fashion_button;
@property (retain, nonatomic) IBOutlet UIButton *cosmetics_button;
@property (retain, nonatomic) IBOutlet UIButton *sport_button;
@property (retain, nonatomic) IBOutlet UIButton *electronics_button;
@property (retain, nonatomic) IBOutlet UIButton *grocery_button;

@property (strong, nonatomic) IBOutlet UIImageView *mainbrand;
@property (strong, nonatomic) IBOutlet UIImageView *topBrand;
@property (strong, nonatomic) IBOutlet UIImageView *top1brand;
@property (strong, nonatomic) IBOutlet UIImageView *top2brand;
@property (strong, nonatomic) IBOutlet UIImageView *top3brand;
@property (strong, nonatomic) IBOutlet UIImageView *top4brand;



@end
