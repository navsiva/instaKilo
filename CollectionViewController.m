//
//  CollectionViewController.m
//  instaKilo
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-06-25.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "headerFile.h"

@interface CollectionViewController ()





@property (strong, nonatomic) NSArray *gallery;


@end

@implementation CollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *art = [NSArray arrayWithObjects: @"1.jpg", @"2.jpg", @"3.jpg", nil];
    
    NSArray *tech = [NSArray arrayWithObjects: @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", nil];
    
    NSArray *misc = [NSArray arrayWithObjects: @"8.jpg", @"9.jpg", @"10.jpg", nil];
    
    self.gallery = @[art, tech, misc];


 //self.gallery = @[@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", @"10.jpg"];


    
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.gallery count];
}

//The number of cells is defined by the size of our array of photos
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
     return [[self.gallery objectAtIndex:section] count];
    
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell" forIndexPath:indexPath];
    
    //UIImageView *galleryImageView = (UIImageView *)[cell viewWithTag: 100];
 
    //   galleryImageView.image = [UIImage imageNamed:[galleryImageView[indexPath.section] objectAtIndex.indexPath.row];
    
    
    
   // NSString *myPhotoString = [self.gallery objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.gallery[indexPath.section] objectAtIndex:indexPath.row]];
    
    return cell;
    
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    headerFile *headerTitle = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerText" forIndexPath:indexPath];
    
    headerTitle.headerLabel.text = @"Section Title";
    
    NSString *myHeader;
    
    switch (indexPath.section) {
           
        case 0:
            myHeader = @"Art Photos";
            break;
        case 1:
            myHeader = @"Tech Photos";
            break;
        case 2:
            myHeader = @"Misc. Photos";
            break;
        default:
            break;
            
        }
    headerTitle.headerLabel.text = myHeader;
    
            
    

        return headerTitle;



    
}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
