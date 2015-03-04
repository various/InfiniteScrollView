//
//  ViewController.m
//  InfiniteScrollView
//
//  Created by Tim Geng on 1/13/15.
//  Copyright (c) 2015 PwC. All rights reserved.
//

#import "ViewController.h"
#import "InfiniteScrollView.h"
@interface ViewController ()
@property(nonatomic,strong) InfiniteScrollView *scrollview;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label1.text = @"View1";
    label2.text = @"View2";
    label3.text = @"View3";
    label4.text = @"View4";
    label5.text = @"View5";
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view1.backgroundColor = [UIColor redColor];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view2.backgroundColor = [UIColor grayColor];
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view3.backgroundColor = [UIColor greenColor];
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view4.backgroundColor = [UIColor yellowColor];
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view5.backgroundColor = [UIColor purpleColor];
    NSArray *views = [NSArray arrayWithObjects:view1,view2,view3,view4,view5, nil];
    [view1 addSubview:label1];
    [view2 addSubview:label2];
    [view3 addSubview:label3];
    [view4 addSubview:label4];
    [view5 addSubview:label5];
    self.scrollview = [[InfiniteScrollView alloc] initWithFrame:CGRectMake(20, 50, 300, 300) withViews:views];
    [self.view addSubview:self.scrollview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
