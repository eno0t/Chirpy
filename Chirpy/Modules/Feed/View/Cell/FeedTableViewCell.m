//
//  FeedTableViewCell.m
//  Chirpy
//
//  Created by enot on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "Post.h"

@implementation FeedTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)configure:(Post*)post{
    NSURL* imageUrl = [NSURL URLWithString:post.imageUrl];
    [self.image sd_setImageWithURL:imageUrl];
    [self.image setHidden:![[NSUserDefaults standardUserDefaults] boolForKey:@"visibleImage"]];
    self.title.text  = post.title;
    self.name.text   = post.name;
}

@end
