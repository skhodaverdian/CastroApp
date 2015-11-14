//
//  YouTubeVideo1ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/26/15.
//
//

#import "YouTubeVideo1ViewController.h"

@interface YouTubeVideo1ViewController ()

@end

@implementation YouTubeVideo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // [self.myYouTubeVideo1WebView setDelegate:self];
    
    NSString *urlString = @"<iframe width=\"265\" height=\"140\" src=\"https://www.youtube.com/embed/en5RenIJHDo\" frameborder=\"0\" allowfullscreen></iframe>";
    
//    [self.myYouTubeVideo1WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    [[self myYouTubeVideo1WebView] loadHTMLString:urlString baseURL:nil];

}


@end
