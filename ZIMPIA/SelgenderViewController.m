//
//  SelgenderViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/26/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "SelgenderViewController.h"

@interface SelgenderViewController ()

@end


@implementation SelgenderViewController
@synthesize btnAge;
@synthesize btnShirt;
@synthesize btnShirtsize;
@synthesize btnShoe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
  //  self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
   }
- (void)viewDidUnload {
    //    [btnSelect release];
    btnAge = nil;
    [self setBtnAge:nil];
    btnShirt = nil;
    [self setBtnShirt:nil];
    btnShoe = nil;
    [self setBtnShoe:nil];
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)dealloc {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)maleClicked:(id)sender {
    _malephoto.image = [UIImage imageNamed:@"male_sel_photo.png"];
    _femalephoto.image = [UIImage imageNamed:@"female_photo.png"];
    
    _male_icon.image = [UIImage imageNamed:@"male_icon.png"];
    _shirt_icon.image = [UIImage imageNamed:@"mshirt_icon.png"];
    _trouser_icon.image = [UIImage imageNamed:@"mtrouser_icon.png"];
    _shoe_icon.image = [UIImage imageNamed:@"mshoe_icon.png"];
}

- (IBAction)femaleClicked:(id)sender {
    _malephoto.image = [UIImage imageNamed:@"male_photo.png"];
    _femalephoto.image = [UIImage imageNamed:@"female_sel_photo.png"];
    _male_icon.image = [UIImage imageNamed:@"female_icon.png"];
    _shirt_icon.image = [UIImage imageNamed:@"fshirt_icon.png"];
    _trouser_icon.image = [UIImage imageNamed:@"ftrouser_icon.png"];
    _shoe_icon.image = [UIImage imageNamed:@"fshoe_icon.png"];
}
- (IBAction)ageClicked:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"20", @"21", @"22", @"23", @"24", @"25", @"26", @"27", @"28", @"29",nil];
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

- (IBAction)shirtsizeClicked:(id)sender {
}

- (IBAction)trouserClicked:(id)sender {
}

- (IBAction)shirtClicked:(id)sender {
    
    NSArray * arrShirtSize = [[NSArray alloc] init];
    arrShirtSize = [NSArray arrayWithObjects:@"L", @"M", @"XL", @"H",nil];
    NSArray * arrShirtSizeImage = [[NSArray alloc] init];

    if(shirtDown == nil) {
        CGFloat f = 200;
        shirtDown = [[NIDropDown alloc]showDropDown:sender :&f :arrShirtSize :arrShirtSizeImage :@"down"];
        shirtDown.delegate = self;
    }
    else {
        [shirtDown hideDropDown:sender];
        [self rel];
    }

    
}

- (IBAction)shoeClicked:(id)sender {
    NSArray * arrShoe = [[NSArray alloc] init];
    arrShoe = [NSArray arrayWithObjects:@"US", @"UK",nil];
    NSArray * arrImage = [[NSArray alloc] init];
    
    if(shoeDown == nil) {
        CGFloat f = 200;
        shoeDown = [[NIDropDown alloc]showDropDown:sender :&f :arrShoe :arrImage :@"down"];
        shoeDown.delegate = self;
    }
    else {
        [shoeDown hideDropDown:sender];
        [self rel];
    }

}

- (IBAction)shoesizeClicked:(id)sender {
   }

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
    NSLog(@"%@", btnAge.titleLabel.text);
}

-(void)rel{
    dropDown = nil;
    shirtDown = nil;
    shoeDown = nil;
}

@end
