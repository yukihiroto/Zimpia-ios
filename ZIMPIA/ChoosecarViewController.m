//
//  ChoosecarViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/31/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "ChoosecarViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ChoosecarViewController ()
{
    NSArray *breadsPhoto;
}
@end

@implementation ChoosecarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    breadsPhoto = [NSArray arrayWithObjects:@"car1_img.png", @"car2_img.png", @"car3_img.png", @"car4_img.png", @"car5_img.png", @"car1_img.png",@"car1_img.png", @"car2_img.png", @"car3_img.png", @"car4_img.png", @"car5_img.png", @"car1_img.png", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return breadsPhoto.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[breadsPhoto objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}


@end
