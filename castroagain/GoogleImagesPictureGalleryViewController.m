//
//  GoogleImagesPictureGalleryViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 8/9/15.
//
//

#import "GoogleImagesPictureGalleryViewController.h"

@interface GoogleImagesPictureGalleryViewController ()

@end

@implementation GoogleImagesPictureGalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.myGoogleImagesWebView setDelegate:self];
    
    NSString *urlString = @"https://www.google.com/search?q=fidel+castro&tbm=isch";
    
    [self.myGoogleImagesWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
}


@end
