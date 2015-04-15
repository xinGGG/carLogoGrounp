//
//  ViewController.m
//  汽车品牌
//
//  Created by mac on 15/4/15.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import "ViewController.h"
#import "JXcarGrounp.h"
#import "JXcars.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *carGrounps;
@end

@implementation ViewController

- (NSArray *)carGrounps{

    if (_carGrounps == nil) {
        _carGrounps = [JXcarGrounp Root];
    }
    return _carGrounps;
}

- (UITableView *)tableView{
    if(_tableView==nil){
        //实例化
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        //代理
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建tableview
    [self tableView];
    //导入数据
    
}

#pragma mark - 表格数据源
//组
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.carGrounps.count;
}
//行
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    JXcarGrounp *carG = self.carGrounps[section];
    return carG.cars.count;
}
//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];

    }
    //建立数据模型
    JXcarGrounp *carGrounp = self.carGrounps[indexPath.section];
    JXcars *car = carGrounp.cars[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;
    return cell;
}
//row  head
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    JXcarGrounp *carGrounp = self.carGrounps[section];
    return carGrounp.title;
}



//右侧
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    NSArray *arr = [self.carGrounps valueForKey:@"title"];
    
    return arr;
}

@end














