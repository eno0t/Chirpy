//
//  CoreDataManager.m
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "CoreDataManager.h"
#import "Post.h"

NSString * const kNameDataBase   = @"Chirpy";
NSString * const kNameSort       = @"date";

@implementation CoreDataManager

+ (instancetype)shared{
    static CoreDataManager *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

- (instancetype)init{
    if (self = [super init]){
        [MagicalRecord setupCoreDataStackWithStoreNamed:kNameDataBase];
    }
    return self;
}

- (NSArray*)getPosts{
    NSArray* posts = [Post MR_findAll];
    return posts != nil ? [[Post MR_findAllSortedBy:kNameSort ascending:NO] mutableCopy] : nil;
}

- (void)createTwitt:(NSString*)name
              image:(NSString*)image
              title:(NSString*)title{
    Post *twit      = [Post MR_createEntity];
    twit.name       = name;
    twit.date       = [[NSDate date] timeIntervalSince1970];
    twit.imageUrl   = image;
    twit.title      = title;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * _Nullable error) {
        if (contextDidSave && self->_delegate) {
            [self->_delegate savePosts];
        }
    }];
}

@end
