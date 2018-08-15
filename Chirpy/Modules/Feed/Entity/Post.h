//
//  Post.h
//  Chirpy
//
//  Created by Дементьев Степан on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Post : NSManagedObject

@property (nonatomic, strong)NSString* name;
@property (nonatomic, strong)NSString* title;
@property (nonatomic, strong)NSString* imageUrl;
@property double date;

@end
