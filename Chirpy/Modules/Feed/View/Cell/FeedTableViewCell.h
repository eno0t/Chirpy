//
//  FeedTableViewCell.h
//  Chirpy
//
//  Created by enot on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedTableViewCellProtocol.h"

@interface FeedTableViewCell : UITableViewCell <FeedTableViewCellProtocol>
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *name;

@end
