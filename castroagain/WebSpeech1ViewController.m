//
//  WebSpeech1ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 6/18/14.
//
//

#import "WebSpeech1ViewController.h"

@interface WebSpeech1ViewController ()

@end

@implementation WebSpeech1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.myWebView setDelegate:self];
    
	NSString *myHTML = @"<html><body><p>The first speech of Castro as a victories "
    "revolutionary to the people of Cuba. It was delivered in the city of Santiago "
    "de Cuba which had played a significant role in the fight in the Sierra Maestra mountains</p><br />To read the full speech tap below<br /><a href='http://www.marxists.org/history/cuba/archive/castro/1959/01/03.htm'>The Revolution Begins Now</a></body></html>";
    [self.myWebView loadHTMLString:myHTML baseURL:nil];
    
}


@end
