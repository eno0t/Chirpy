//
//  SettingsPresenter.m
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "SettingsPresenter.h"
#import "SettingsViewController.h"
#import "SettingsInteractor.h"

@implementation SettingsPresenter{
    __weak SettingsViewController *view;
    SettingsInteractor            *interactor;
}

- (instancetype)init{
    NSAssert(YES, @"Wrong initializer");
    return nil;
}

- (instancetype)initWithView:(SettingsViewController *)view {
    if (self = [super init]) {
        self->view   = view;
        interactor   = [SettingsInteractor new];
    }
    return self;
}

- (BOOL)isVisibleImage{
    return [interactor isVisibleImage];
}

- (void)setVisibleImage:(BOOL)isVisible{
    [interactor setVisibleImage:isVisible];
}

@end
