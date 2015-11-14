//
//  WebSpeech0ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 5/19/15.
//
//

#import "WebSpeech0ViewController.h"

@interface WebSpeech0ViewController ()

@end

@implementation WebSpeech0ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.myWebView0 setDelegate:self];
    
    NSString *myHTML = @"<html><body><p>Castro was arrested and put on trial after the failed "
    "attack on Moncada Barracks in the city of Santiago de Cuba in 1953. "
    "No record of the speech was kept. Castro later recalled and published it and it became "
    "the manifesto for the revolutionary movement. The title refers to the last "
    " sentence in the speech.</p><br />To read the full speech tap below<br /><a href='http://www.marxists.org/history/cuba/archive/castro/1953/10/16.htm'>History Will Absolve Me</a></body></html>";
    [self.myWebView0 loadHTMLString:myHTML baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) webViewDidStartLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (void) webViewDidFinishLoad:(UIView *)webView
{
    [[UIApplication sharedApplication]setNetworkActivityIndicatorVisible:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
