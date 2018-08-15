//
//  FeedPresenterProtocol.h
//  Chirpy
//
//  Created by enot on 09.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FeedViewController;
@class Post;

@protocol FeedPresenterProtocol <NSObject>

@required

- (instancetype)initWithView:(FeedViewController *)view;
- (NSUInteger)countPosts;
- (Post*)postWithIndexPath:(NSIndexPath*)indexPath;

@end
