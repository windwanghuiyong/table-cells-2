//
//  ViewController.m
//  TableCells2
//
//  Created by wanghuiyong on 23/01/2017.
//  Copyright © 2017 My Organization. All rights reserved.
//

#import "ViewController.h"
#import "NameAndColorCell.h"

static NSString *CellTableIdentifier = @"CellTableIdentifier";

@interface ViewController ()

@property (copy, nonatomic) NSArray *computers;					// 数据源
@property (weak, nonatomic) IBOutlet UITableView *tableView;		// 表视图

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 数据源
    self.computers = @[@{@"Name" : @"MacBook Air", @"Color" : @"Silver"},
                       @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
                       @{@"Name" : @"iMac",        @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Mini",    @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Pro",     @"Color" : @"Black"}];
    // 注册表视图单元, 并指定标识符
    UINib *nib = [UINib nibWithNibName:@"NameAndColorCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
}

// UITableViewDataSource Protocol Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"共有 %lu 行", (unsigned long)[_computers count]);
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier forIndexPath:indexPath];
    NSDictionary *rowData = self.computers[indexPath.row];	// 按键检索值
    cell.name = rowData[@"Name"];							// 调用设值方法
    cell.color = rowData[@"Color"];
    
    return cell;
}

@end
