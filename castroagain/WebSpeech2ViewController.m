//
//  WebSpeech2ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 6/22/14.
//
//

#import "WebSpeech2ViewController.h"

@interface WebSpeech2ViewController ()

@end

@implementation WebSpeech2ViewController

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
    [self.myWebView2 setDelegate:self];
    
    NSString *myHTML = @"<html><body><p>After the failed invasion at the Bay of Pigs, by the "
    "anti-Castro forces supported by the United States, Castro delivered a speech where, "
    "for the first time, he declared the Cuban revolution as a socialist movement.</p><br />To read the full speech tap below<br /><a href='http://www.marxists.org/history/cuba/archive/castro/1961/05/01.htm'>Cuba is a Socialist Nation</a></body></html>";
    [self.myWebView2 loadHTMLString:myHTML baseURL:nil];
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

@end
