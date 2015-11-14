//
//  OpeningScreenViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 10/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "OpeningScreenViewController.h"

@interface OpeningScreenViewController ()

@end

@implementation OpeningScreenViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.separatorColor = [UIColor clearColor];
    
    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"OpeningPictureLarge.jpg"]];
    [tempImageView setFrame:self.tableView.frame];
    
    self.tableView.backgroundView = tempImageView;
 //   self.navigationController.navigationItem.titleView.tintColor = [UIColor clearColor];
   // self.navbarHome.titleView.backgroundColor  = [UIColor redColor];
   // self.navbarHome.titleView.tintColor = [UIColor clearColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
  //  self.navigationController.navigationBar.translucent = YES;
    

}


- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
 //   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    ;
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    cell.textLabel.font = [UIFont systemFontOfSize:12];
    cell.textLabel.numberOfLines = 1;
    cell.textLabel.textColor=[UIColor whiteColor];
    cell.textLabel.font = [UIFont systemFontOfSize:16];
    cell.textLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:15.0];
    
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"Biography";
    } else if (indexPath.section == 1) {
        cell.textLabel.text = @"Picture Gallery";
    } else if (indexPath.section == 2) {
        cell.textLabel.text = @"Video";
    } else if (indexPath.section == 3) {
        cell.textLabel.text = @"Speeches";
    } else {
        //cell.textLabel.text = @"External";
    }
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.section) {
        case 0:
            [self performSegueWithIdentifier:@"displayBiography" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"displayGoogleImages" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"displayVideos" sender:nil];
            break;
        case 3:
            [self performSegueWithIdentifier:@"displaySpeeches" sender:nil];
            break;
        default:
            break;
    }
    
    
    
}
@end
