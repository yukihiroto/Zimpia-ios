//
//  SaleTableViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/29/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "SaleTableViewController.h"
#import "SaleCellTableViewCell.h"
@interface SaleTableViewController ()

@end

@implementation SaleTableViewController
{
    
    NSArray *tableData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    tableData =  @[
                   @{@"productimage":@"item1.png",@"productname":@"Mini Bag",@"pastcost":@"$58.00",@"newcoast":@"$34.00",@"newsale":@"sale.png"},
                   
                   @{@"productimage":@"item2.png",@"productname":@"Belt",@"pastcost":@"$28.00",@"newcoast":@"$24.00",@"newsale":@""},
                   @{@"productimage":@"item3.png",@"productname":@"Shoes",@"pastcost":@"$98.00",@"newcoast":@"$62.00",@"newsale":@""},
                   
                   @{@"productimage":@"item4.png",@"productname":@"Mini Bag",@"pastcost":@"$58.00",@"newcoast":@"$35.00",@"newsale":@""}
                   ];
   // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
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
    
    
    SaleCellTableViewCell *cell = (SaleCellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SaleCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSDictionary *rowData = self->tableData[indexPath.row];
    //  cell.textLabel.text = rowData[@"Name"];
    //  cell.imageView.image = [UIImage imageNamed:rowData[@"img"]];
    
    cell.productnameLabel.text = rowData[@"productname"];
    cell.productImage.image = [UIImage imageNamed:rowData[@"productimage"]];
    cell.salenewImage.image = [UIImage imageNamed:rowData[@"newsale"]];
    cell.newcostLabel.text = rowData[@"newcoast"];
    cell.pastcostLabel.text = rowData[@"pastcost"];
    
    return cell;
}

@end
