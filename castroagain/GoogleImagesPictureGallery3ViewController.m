//
//  GoogleImagesPictureGallery3ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/24/15.
//
//

#import "GoogleImagesPictureGallery3ViewController.h"

@interface GoogleImagesPictureGallery3ViewController ()

@end

@implementation GoogleImagesPictureGallery3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.myGoogleImagesWebView3 setDelegate:self];
    
    NSString *urlString = @"https://www.google.com/search?q=fidel+castro+1959+cuban+revolution&tbm=isch";
    
    [self.myGoogleImagesWebView3 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    
}



@end
