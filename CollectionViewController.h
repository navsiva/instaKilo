//
//  CollectionViewController.h
//  instaKilo
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-06-25.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>


@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end
