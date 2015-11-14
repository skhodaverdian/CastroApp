//
//  GoogleImagesPictureGallery2ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/16/15.
//
//

#import "GoogleImagesPictureGallery2ViewController.h"

@interface GoogleImagesPictureGallery2ViewController ()

@end

@implementation GoogleImagesPictureGallery2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.myGoogleImagesWebView2 setDelegate:self];
    
    NSString *urlString = @"https://www.google.com/search?q=fidel+castro+family&tbm=isch";
    
    [self.myGoogleImagesWebView2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}



@end
