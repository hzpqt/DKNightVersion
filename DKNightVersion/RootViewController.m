//
//  RootViewController.m
//  DKNightVerision
//
//  Created by apple on 4/14/15.
//  Copyright (c) 2015 DeltaX. All rights reserved.
//

#import "RootViewController.h"
#import "SuccViewController.h"
#import "DKNightVersion.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
//    label.center = CGPointMake(self.view.center.x, 240);
//    label.clipsToBounds = YES;
//    label.font = [UIFont systemFontOfSize:25];
//    label.layer.cornerRadius = 10;
//    label.numberOfLines = 0;
//    label.text = @"DKNightVersion is a light weight framework adding night version to your app. ";
//    label.textAlignment = NSTextAlignmentCenter;
//    label.textColor = [UIColor darkGrayColor];
//
//    UIButton *nightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
//    nightButton.center = CGPointMake(self.view.center.x, 350);
//    nightButton.titleLabel.font = [UIFont systemFontOfSize:30];
//    [nightButton setTitle:@"Night Falls" forState:UIControlStateNormal];
//    [nightButton setTitleColor:[UIColor colorWithRed:0.478 green:0.651 blue:0.988 alpha:1.0] forState:UIControlStateNormal];
//    [nightButton addTarget:self action:@selector(nightFalls) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton *dawnButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
//    [dawnButton setTitle:@"Dawn Comes" forState:UIControlStateNormal];
//    dawnButton.titleLabel.font = [UIFont systemFontOfSize:30];
//    dawnButton.center = CGPointMake(self.view.center.x, 450);
//    [dawnButton setTitleColor:[UIColor colorWithRed:0.478 green:0.651 blue:0.988 alpha:1.0] forState:UIControlStateNormal];
//    [dawnButton addTarget:self action:@selector(dawnComes) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton *nextButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
//    [nextButton setTitle:@"Next" forState:UIControlStateNormal];
//    nextButton.center = CGPointMake(self.view.center.x, 550);
//    [nextButton setTitleColor:[UIColor colorWithRed:0.478 green:0.651 blue:0.988 alpha:1.0] forState:UIControlStateNormal];
//    [nextButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
//
//    [self.view addSubview:label];
//    [self.view addSubview:nightButton];
//    [self.view addSubview:dawnButton];
//    [self.view addSubview:nextButton];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    NSLog(@"%@", self.tableView.superview);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self nightFalls];
    });
}

- (void)nightFalls {
    [DKNightVersionManager nightFalling];
}

- (void)dawnComes {
    [DKNightVersionManager dawnComing];
}

- (void)push {
    [self.navigationController pushViewController:[[SuccViewController alloc] init] animated:YES];
}

#pragma mark - UITableView Delegate & DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    return cell;
}


@end
