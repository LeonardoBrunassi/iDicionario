//
//  TabBarViewController.m
//  Navigation
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 18/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "TabBarViewController.h"
#import "DicionarioViewController.h"
#import "TableViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DicionarioViewController *viewController = [[DicionarioViewController alloc]
                                                initWithNibName:nil
                                                bundle:nil];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:viewController];
    
    TableViewController *tabView = [[TableViewController alloc] init];
    
    NSArray *view = [NSArray arrayWithObjects:navController, tabView, nil];
    
    
    
    [self setViewControllers:view];
    navController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Carros" image:[UIImage imageNamed:@"sedan3"] tag:1];
    tabView.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Lista" image:[UIImage imageNamed:@"list4"] tag:2];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
