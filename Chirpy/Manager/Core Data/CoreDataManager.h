//
//  CoreDataManager.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreDataManagerProtocol.h"
#import <MagicalRecord/MagicalRecord.h>

@interface CoreDataManager : NSObject <CoreDataManagerProtocol>

@property (nonatomic, weak) id<CoreDataManagerDelegate> delegate;

@end
