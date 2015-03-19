//
//  TableViewController.h
//  Navigation
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 19/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *table;

@end
