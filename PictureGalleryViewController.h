//
//  PictureGalleryViewController.h
//  castroagain
//
//  Created by Sivak Khodaverdian on 4/1/14.
//
//

#import <UIKit/UIKit.h>

@interface PictureGalleryViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end
