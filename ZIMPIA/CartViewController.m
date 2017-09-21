//
//  CartViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "CartViewController.h"
#import "CartCellTableViewCell.h"

@interface CartViewController ()

@end

@implementation CartViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData =  @[
                   @{@"productimage":@"item1.png",@"color":@"Grey",@"size":@"L",@"price":@"$34.00",@"amount":@"3",@"cost":@"$102.00"},
                   @{@"productimage":@"item2.png",@"color":@"Black",@"size":@"M",@"price":@"$24.00",@"amount":@"2",@"cost":@"$48.00"},
                   @{@"productimage":@"item3.png",@"color":@"White",@"size":@"XL",@"price":@"$62.00",@"amount":@"5",@"cost":@"$310.00"},
                   @{@"productimage":@"item4.png",@"color":@"Grey",@"size":@"L",@"price":@"$35.00",@"amount":@"2",@"cost":@"$70.00"}
                   ];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    
    CartCellTableViewCell *cell = (CartCellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CartCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSDictionary *rowData = self->tableData[indexPath.row];
    //  cell.textLabel.text = rowData[@"Name"];
    //  cell.imageView.image = [UIImage imageNamed:rowData[@"img"]];
    
    

    cell.productImage.image = [UIImage imageNamed:rowData[@"productimage"]];
    cell.colorLabel.text = rowData[@"color"];
    cell.priceLabel.text = rowData[@"price"];
    cell.costLabel.text = rowData[@"cost"];
    cell.amountLabel.text = rowData[@"amount"];
    cell.sizeLabel.text = rowData[@"size"];

    return cell;
}


@end
