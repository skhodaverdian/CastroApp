//
//  SpeechesViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 5/18/14.
//
//

#import "SpeechesViewController.h"

@interface SpeechesViewController ()

@end

@implementation SpeechesViewController

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
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
        cell.textLabel.text = @"History Will Absolve Me";
    } else if (indexPath.section == 1) {
        cell.textLabel.text = @"The Revolution Begins Now";
    } else if (indexPath.section == 2) {
        cell.textLabel.text = @"Cuba is a Socialist Nation";
    } 
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            [self performSegueWithIdentifier:@"historySpeech" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"revolutionSpeech" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"USAgressionSpeech" sender:nil];
            break;
        default:
            break;
    }
    
    
    
}

@end
