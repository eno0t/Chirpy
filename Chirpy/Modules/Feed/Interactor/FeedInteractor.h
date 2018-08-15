//
//  FeedInteractor.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "FeedInteractorProtocol.h"

@interface FeedInteractor : NSObject <FeedInteractorProtocol, CoreDataManagerDelegate>

@property (nonatomic, weak) id<FeedInteractorDelegate> delegate;

@end
