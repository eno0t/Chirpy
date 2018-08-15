//
//  FeedPresenter.h
//  Chirpy
//
//  Created by enot on 09.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedPresenterProtocol.h"
#import "FeedInteractorDelegate.h"

@interface FeedPresenter : NSObject <FeedPresenterProtocol, FeedInteractorDelegate>

@end
