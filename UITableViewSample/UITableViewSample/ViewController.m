//
//  ViewController.m
//  UITableViewSample
//
//  Created by Dolice on 2013/06/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *dataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //テーブルビューに表示するデータのリストを作成
    _dataList = [[NSArray alloc] initWithObjects:
                 @"ITEM 1", @"ITEM 2", @"ITEM 3",
                 @"ITEM 4", @"ITEM 5", @"ITEM 6",
                 @"ITEM 7", @"ITEM 8", @"ITEM 9",
                 @"ITEM 10", @"ITEM 11", @"ITEM 12",
                 @"ITEM 13", @"ITEM 14", @"ITEM 15",
                 @"ITEM 16", @"ITEM 17", @"ITEM 18",
                 nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ([_dataList count]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"basis-cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifier];
    }
    cell.textLabel.text = [_dataList objectAtIndex:indexPath.row];
    return (cell);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *message = [_dataList objectAtIndex:indexPath.row];
    UIAlertView *alert = [[UIAlertView alloc] init];
    alert.message = message;
    [alert addButtonWithTitle:@"OK"];
    [alert show];
}

@end
