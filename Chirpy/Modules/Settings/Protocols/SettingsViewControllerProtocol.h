//
//  SettingsViewControllerProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SettingsPresenter;

@protocol SettingsViewControllerProtocol <NSObject>

@property (nonatomic, strong, readonly) SettingsPresenter* presenter;

@end
