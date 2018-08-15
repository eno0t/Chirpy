//
//  FeedPresenter.m
//  Chirpy
//
//  Created by enot on 09.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedPresenter.h"
#import "FeedViewController.h"
#import "FeedRouter.h"
#import "FeedInteractor.h"

@implementation FeedPresenter{
    __weak FeedViewController *view;
    FeedRouter                *router;
    FeedInteractor            *interactor;
    NSTimer                   *timerUpdateData;
    NSNumber                  *time;
}

- (instancetype)init{
    NSAssert(YES, @"Wrong initializer");
    return nil;
}

- (instancetype)initWithView:(FeedViewController *)view {
    if (self = [super init]) {
        
        self->view   = view;
        router       = [FeedRouter new];
        interactor   = [FeedInteractor new];
        
        interactor.delegate = self;
        [interactor getNewPosts];
    }
    return self;
}

#pragma mark - Interactor

- (NSUInteger)countPosts{
    return [interactor getCountPosts];
}

- (Post*)postWithIndexPath:(NSIndexPath*)indexPath{
    return [interactor getPostWithIndexPath:indexPath];
}

#pragma mark - Interactor Delegate

- (void)updatePosts{
    [view updateTableView];
    time = @60;
    self->timerUpdateData = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                             target:self
                                                           selector:@selector(tick)
                                                           userInfo:nil
                                                            repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timerUpdateData
                                 forMode:NSRunLoopCommonModes];
}

#pragma mark - View

- (void)tick{
    time = @([time integerValue] - 1);
    NSString* timeString;
    
    if ([time isEqualToNumber:@0]) {
        timeString = @"";
        [timerUpdateData invalidate];
        [interactor getNewPosts];
    }else{
        timeString = [time stringValue];
    }
    [view performSelectorOnMainThread:@selector(updateTime:)
                           withObject:timeString
                        waitUntilDone:YES];
}

#pragma mark - Router

- (void)showSettings{
    [router showSettings:view];
}

@end
