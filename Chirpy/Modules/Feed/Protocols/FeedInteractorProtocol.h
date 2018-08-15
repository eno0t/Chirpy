//
//  FeedInteractorProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedInteractorDelegate.h"
#import "CoreDataManagerDelegate.h"

@class Post;

@protocol FeedInteractorProtocol <NSObject>

@required
- (void)getNewPosts;
- (Post*)getPostWithIndexPath:(NSIndexPath*)indexPath;
- (NSUInteger)getCountPosts;

@end
