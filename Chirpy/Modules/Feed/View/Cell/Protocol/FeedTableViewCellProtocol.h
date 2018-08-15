//
//  FeedTableViewCellProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Post;

@protocol FeedTableViewCellProtocol <NSObject>

- (void)configure:(Post*)post;

@end
