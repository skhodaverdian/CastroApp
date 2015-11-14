//
//  GoogleImagesPictureGallery4ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/25/15.
//
//

#import "GoogleImagesPictureGallery4ViewController.h"

@interface GoogleImagesPictureGallery4ViewController ()

@end

@implementation GoogleImagesPictureGallery4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self.myGoogleImagesWebView4 setDelegate:self];
    
    NSString *urlString = @"https://www.google.com/search?q=fidel+castro+1959+cuban+missle+crisis&tbm=isch";
    
    [self.myGoogleImagesWebView4 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}




@end
