//
//  GenderViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/25/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "GenderViewController.h"
#import "NIDropDown.h"
#import "QuartzCore/QuartzCore.h"

@interface GenderViewController ()


@end

@implementation GenderViewController
@synthesize btnAge;
@synthesize btnShirt;
@synthesize btnShirtsize;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    btnAge.layer.borderWidth = 1;
    btnAge.layer.borderColor = [[UIColor blackColor] CGColor];
    btnAge.layer.cornerRadius = 5;
    
    btnShirt.layer.borderWidth = 1;
    btnShirt.layer.borderColor = [[UIColor blackColor] CGColor];
    btnShirt.layer.cornerRadius = 5;
}

- (void)viewDidUnload {
    //    [btnSelect release];
    btnAge = nil;
    [self setBtnAge:nil];
    btnShirt = nil;
    [self setBtnShirt:nil];
    btnShirt = nil;
    [self setBtnShirtsize:nil];
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


- (IBAction)self_male:(id)sender {
    _malephoto.image = [UIImage imageNamed:@"male_sel_photo.png"];
    _femalephoto.image = [UIImage imageNamed:@"female_photo.png"];
    _age.image = [UIImage imageNamed:@"male_icon.png"];
    _shirt.image = [UIImage imageNamed:@"mshirt_icon.png"];
    _trouser.image = [UIImage imageNamed:@"mtrouser_icon.png"];
    _shoe.image = [UIImage imageNamed:@"mshoe_icon.png"];
  }

- (IBAction)self_female:(id)sender {
    _malephoto.image = [UIImage imageNamed:@"male_photo.png"];
    _femalephoto.image = [UIImage imageNamed:@"female_sel_photo.png"];
    
    _age.image = [UIImage imageNamed:@"female_icon.png"];
    _shirt.image = [UIImage imageNamed:@"fshirt_icon.png"];
    _trouser.image = [UIImage imageNamed:@"ftrouser_icon.png"];
    _shoe.image = [UIImage imageNamed:@"fshoe_icon.png"];
}

- (IBAction)maleClicked:(id)sender {
    _malephoto.image = [UIImage imageNamed:@"male_photo.png"];
    _femalephoto.image = [UIImage imageNamed:@"female_sel_photo.png"];
    
    _age.image = [UIImage imageNamed:@"female_icon.png"];
    _shirt.image = [UIImage imageNamed:@"fshirt_icon.png"];
    _trouser.image = [UIImage imageNamed:@"ftrouser_icon.png"];
    _shoe.image = [UIImage imageNamed:@"fshoe_icon.png"];
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

- (IBAction)shirtClicked:(id)sender {
    
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"L", @"M", @"X", @"XL",nil];
    
    NSArray * arrImage = [[NSArray alloc] init];
    
    if(shirtDown == nil) {
        CGFloat f = 200;
        shirtDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :arrImage :@"down"];
        shirtDown.delegate = self;
    }
    else {
        [shirtDown hideDropDown:sender];
        [self relshirt];
    }

}

- (IBAction)shirtsizeClicked:(id)sender {
    
}

- (IBAction)trouserClicked:(id)sender {
}

- (IBAction)trousersizeClicked:(id)sender {
}

- (IBAction)shoeClicked:(id)sender {
}

- (IBAction)shoesizeClicked:(id)sender {
}
- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
    [self relshirt];
    NSLog(@"%@", btnAge.titleLabel.text);
    NSLog(@"%@", btnShirt.titleLabel.text);
}

-(void)rel{
    //    [dropDown release];
    dropDown = nil;
}
-(void)relshirt{
    //    [dropDown release];
    shirtDown = nil;
}

@end
