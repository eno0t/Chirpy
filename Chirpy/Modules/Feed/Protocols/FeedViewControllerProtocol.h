//
//  FeedViewControllerProtocol.h
//  Chirpy
//
//  Created by enot on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FeedPresenter;

@protocol FeedViewControllerProtocol <NSObject>

@property (nonatomic, strong, readonly) FeedPresenter* presenter;

- (void)updateTableView;
- (void)updateTime:(NSString*)time;

@end
