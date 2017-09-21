//
//  AddmoreViewController.m
//  ZIMPIA
//
//  Created by PPT on 5/26/17.
//  Copyright © 2017 PPT. All rights reserved.
//

#import "AddmoreViewController.h"
#import "AddTableViewCell.h"
@interface AddmoreViewController ()

@end

@implementation AddmoreViewController
{
    
    NSArray *tableData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    tableData =  @[
                  @{@"productimage":@"item1.png",@"productname":@"STEVE JOSEPH",@"pastcost":@"$58.00",@"newcoast":@"$34.00",@"newsale":@"sale.png"},
                  
                  @{@"productimage":@"item2.png",@"productname":@"SARAH ABERT",@"pastcost":@"$28.00",@"newcoast":@"$24.00",@"newsale":@""},
                  @{@"productimage":@"item3.png",@"productname":@"SEVAN HAKOB",@"pastcost":@"$98.00",@"newcoast":@"$62.00",@"newsale":@""},
                  
                  @{@"productimage":@"item4.png",@"productname":@"HENRIK RUDOLF",@"pastcost":@"$58.00",@"newcoast":@"$35.00",@"newsale":@""}
                  ];


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
    
    
    AddTableViewCell *cell = (AddTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"Addcell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSDictionary *rowData = self->tableData[indexPath.row];
    //  cell.textLabel.text = rowData[@"Name"];
    //  cell.imageView.image = [UIImage imageNamed:rowData[@"img"]];
    
    cell.nameLabel.text = rowData[@"productname"];
    
    return cell;
}

@end
