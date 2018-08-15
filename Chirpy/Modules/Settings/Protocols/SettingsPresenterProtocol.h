//
//  SettingsPresenterProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SettingsViewController;

@protocol SettingsPresenterProtocol <NSObject>

- (instancetype)initWithView:(SettingsViewController *)view;
- (BOOL)isVisibleImage;
- (void)setVisibleImage:(BOOL)isVisible;

@end
