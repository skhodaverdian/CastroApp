//
//  PictureGalleryViewController.m
//  castroagain
//
//  Created by Sivak Khodaverdian on 4/1/14.
//
//

#import "PictureGalleryViewController.h"
#import "CustomCell.h"

@interface PictureGalleryViewController ()
{
    NSArray *arrayOfPictures;
    NSArray *arrayOfLabels;
    NSArray *arrayOfCitations;
}
@end

@implementation PictureGalleryViewController


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
    
    [[self myCollectionView]setDataSource:self];
    [[self myCollectionView]setDelegate:self];
    
    
    arrayOfPictures = [[NSArray alloc]initWithObjects:@"InWashingtonDC(LOC).jpg",
                       @"SecondAnniveryOfRevolution(LOC).jpg",
                       @"MarchAgainstUSEconomicPolicies, Oct2000(Adalberto Roque:AFP:Getty Images).jpg",
                       @"Nikita Khruschchev(LOC).jpg",
                       @"Reading paper(LOC).jpg",
                       @"VamosBien(Ted Henken).jpg",
                       @"WithCheinSierraMaestraMountain(1957,Popperfoto:GettyImages).jpg",
                       @"WithGuerrilasSierraMountain(AP:Wide World Photo).jpg",
                       @"CastroChe.jpg",
                       @"CubanTV(AP Photo).jpg",
                       @"Fidel With Gun.jpeg",
                       @"At United Nations(LOC).jpg",
                       nil];
    
    arrayOfLabels = [[NSArray alloc]initWithObjects:@"In Washington",
                     @"Second Anniversary of Revolution",
                     @"March Against US Economic Policies",
                     @"Nikita Khruschchev",
                     @"Relaxing",
                     @"Vamos Bien",
                     @"In Sierra Maestra Mountains",
                     @"With Guerrilas In Sierra Maestra",
                     @"Che Guevara",
                     @"On Cuban TV",
                     @"Fighting Batista",
                     @"At The United Nations",
                     nil];
    
    arrayOfCitations = [[NSArray alloc]initWithObjects:@"© Library of Congress",
                     @"© Library of Congress",
                     @"© Adalbrato Roque:AFP:Getty Images",
                     @"© Library of Congress",
                     @"© Library of Congress",
                     @"© Ted Henken",
                     @"© Popperfoto:Getty Images",
                     @"© AP:Wide World Photo",
                     @"© Library of Congress??",
                     @"© AP Photo",
                     @"© Library of Congress??",
                     @"© Library of Congress",
                     nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return [arrayOfPictures count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [[cell myImage]setImage:[UIImage imageNamed:[arrayOfPictures objectAtIndex:indexPath.item]]];
    
    [[cell picsLbl]setText:[arrayOfLabels objectAtIndex:indexPath.item]];
    [[cell citeLbl]setText:[arrayOfCitations objectAtIndex:indexPath.item]];
    
    
    return cell;
}



@end
