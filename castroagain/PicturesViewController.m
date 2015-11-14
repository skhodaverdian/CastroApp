//
//  PicturesViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/15/15.
//
//

#import "PicturesViewController.h"

@interface PicturesViewController ()

@end

@implementation PicturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    cell.textLabel.font = [UIFont systemFontOfSize:12];
    cell.textLabel.numberOfLines = 1;
    
    
    // cell.textLabel.text = @"History Will Absolve Me";
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"Portraits";
    } else if (indexPath.section == 1) {
        cell.textLabel.text = @"Family";
    } else if (indexPath.section == 2) {
        cell.textLabel.text = @"Revolution";
    } else if (indexPath.section == 3) {
        cell.textLabel.text = @"Missle Crisis";
    } else if (indexPath.section == 4) {
        cell.textLabel.text = @"Recently";
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            [self performSegueWithIdentifier:@"displayGoogleImagePortrait" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"displayGoogleImageFamily" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"displayGoogleImageRevolution" sender:nil];
            break;
        case 3:
            [self performSegueWithIdentifier:@"displayGoogleImageMissle" sender:nil];
            break;
        case 4:
            [self performSegueWithIdentifier:@"displayGoogleImageRecent" sender:nil];
            break;
        default:
            break;
    }
    
    
    
}


@end
