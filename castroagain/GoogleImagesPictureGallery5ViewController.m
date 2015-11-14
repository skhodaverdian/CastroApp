//
//  GoogleImagesPictureGallery5ViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/25/15.
//
//

#import "GoogleImagesPictureGallery5ViewController.h"

@interface GoogleImagesPictureGallery5ViewController ()

@end

@implementation GoogleImagesPictureGallery5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self.myGoogleImagesWebView5 setDelegate:self];
    
    NSString *urlString = @"https://www.google.com/search?q=fidel+castro+2015&tbm=isch";
    
    [self.myGoogleImagesWebView5 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];

}



@end
