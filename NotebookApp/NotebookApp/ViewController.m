//
//  ViewController.m
//  NotebookApp
//
//  Created by Jordan Zucker on 10/30/12.
//  Copyright (c) 2012 Jordan Zucker. All rights reserved.
//

#import "ViewController.h"

#import "SketchViewController.h"
#import "ListViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _mainMenuArray = [NSMutableArray arrayWithObjects:@"Lists", @"Sketches", @"Notes", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data Source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_mainMenuArray count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [cell.textLabel setText:[_mainMenuArray objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark - Table View Delegate

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            ListViewController *listView = [[ListViewController alloc] initWithNibName:@"ListView" bundle:nil];
            [self.navigationController pushViewController:listView animated:YES];
        }
            break;
        case 1:
        {
            SketchViewController *sketchView = [[SketchViewController alloc] initWithNibName:@"SketchView" bundle:nil];
            [self.navigationController pushViewController:sketchView animated:YES];
        }
            break;
        default:
            break;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
