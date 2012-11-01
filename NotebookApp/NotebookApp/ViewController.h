//
//  ViewController.h
//  NotebookApp
//
//  Created by Jordan Zucker on 10/30/12.
//  Copyright (c) 2012 Jordan Zucker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *mainMenuTableView;

@property (nonatomic, strong) NSMutableArray *mainMenuArray;

@end
