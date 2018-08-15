//
//  FeedInteractor.m
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedInteractor.h"
#import "CoreDataManager.h"
#import "NetworkManager.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "SerializationTwitter.h"

@implementation FeedInteractor{
    NSArray* posts;
    NetworkManager* network;
}

- (instancetype)init{
    if (self = [super init]) {
        posts   = [[CoreDataManager shared] getPosts];
        [CoreDataManager shared].delegate = self;
        network = [NetworkManager new];
    }
    return self;
}

- (void)getNewPosts{
    __weak typeof(self) weakSelf = self;
    [network getPostsAtTwitter:^(NSArray<NSDictionary *> *objects) {
    __strong typeof(weakSelf) strongSelf = weakSelf;
        if (strongSelf && objects) {
            [strongSelf createPosts:objects];
        }
    } failure:^(NSError *error) {}];
}

- (void)createPosts:(NSArray<NSDictionary *>*)objects {
    dispatch_async(dispatch_get_main_queue(), ^{
        for (NSDictionary* dict in objects) {
            [[CoreDataManager shared] createTwitt:[SerializationTwitter getName:dict]
                                            image:[SerializationTwitter getImageUrl:dict]
                                            title:[SerializationTwitter getTitle:dict]];
        }
        [[CoreDataManager shared] saveContext];
    });
}

- (Post*)getPostWithIndexPath:(NSIndexPath*)indexPath{
    return [self isEmptyPosts] ? [posts objectAtIndex:indexPath.row] : nil;
}

- (NSUInteger)getCountPosts{
    return [self isEmptyPosts] ? posts.count : 0;
}

- (BOOL)isEmptyPosts{
    return posts != nil && posts.count > 0;
}

- (void)savePosts {
    posts = [[CoreDataManager shared] getPosts];
    if (_delegate)
        [_delegate updatePosts];
}

@end
