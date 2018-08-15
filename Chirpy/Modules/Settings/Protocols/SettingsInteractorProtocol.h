//
//  SettingsInteractorProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SettingsInteractorProtocol <NSObject>

- (BOOL)isVisibleImage;
- (void)setVisibleImage:(BOOL)isVisible;

@end
