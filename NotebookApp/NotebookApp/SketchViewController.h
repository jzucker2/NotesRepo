//
//  SketchViewController.h
//  NotebookApp
//
//  Created by Jordan Zucker on 11/1/12.
//  Copyright (c) 2012 Jordan Zucker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SketchViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIButton *undoButton;
@property (nonatomic, strong) IBOutlet UIButton *redoButton;
@property (nonatomic, strong) IBOutlet UIButton *gridButton;

- (IBAction) undoAction:(id)sender;
- (IBAction) redoAction:(id)sender;
- (IBAction) gridAction:(id)sender;

@end
