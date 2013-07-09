//
//  ViewController.m
//  StoryDemo
//
//  Created by jhwang on 13-7-5.
//  Copyright (c) 2013年 jhwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"showSomething"]){
        //dosomething you want
        UIAlertView*alertView = [[UIAlertView  alloc]initWithTitle:nil message:@"test"delegate:nil cancelButtonTitle:@"确定"otherButtonTitles:nil,nil];
        [alertView show];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath{
    static NSString*CellIdentifier = @"Cell";
    UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:CellIdentifier];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text=@"话题";
    return cell;
}
@end
