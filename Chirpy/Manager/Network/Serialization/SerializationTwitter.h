//
//  SerializationTwitter.h
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SerializationTwitter : NSObject

+ (NSArray*)serializationHtml:(NSString*)htmlString;

+ (NSString*)getName:(NSDictionary*)dict;
+ (NSString*)getTitle:(NSDictionary*)dict;
+ (NSString*)getImageUrl:(NSDictionary*)dict;

@end
