//
//  SettingsInteractor.m
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "SettingsInteractor.h"

@implementation SettingsInteractor

- (BOOL)isVisibleImage{
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"visibleImage"];
}

- (void)setVisibleImage:(BOOL)isVisible{
    [[NSUserDefaults standardUserDefaults] setBool:isVisible forKey:@"visibleImage"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
