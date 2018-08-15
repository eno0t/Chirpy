//
//  CoreDataManagerProtocol.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "CoreDataManagerDelegate.h"

@protocol CoreDataManagerProtocol <NSObject>

+ (instancetype)shared;

- (void)saveContext;

- (NSArray*)getPosts;
- (void)createTwitt:(NSString*)name
              image:(NSString*)image
              title:(NSString*)title;

@end
