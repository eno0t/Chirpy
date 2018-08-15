//
//  SerializationTwitter.m
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "SerializationTwitter.h"
#import <HTMLKit/HTMLKit.h>

NSString * const kHtmlContent    = @".content";
NSString * const kHtmlAvatar     = @".js-action-profile-avatar";
NSString * const kHtmlTweet      = @".tweet-text";
NSString * const kHtmlUsername   = @".username";
NSString * const kHtmlSrc        = @"src";

NSString * const kImageUrl    = @"imageUrl";
NSString * const kTitle       = @"title";
NSString * const kName        = @"name";

@implementation SerializationTwitter

+ (NSArray*)serializationHtml:(NSString*)htmlString{
    NSMutableArray* serialization = [NSMutableArray array];
    HTMLDocument* document = [HTMLDocument documentWithString: htmlString];
    
    NSArray* contents = [document querySelectorAll:kHtmlContent];
    
    for (HTMLElement* element in contents) {
        HTMLElement* avatar     = [element querySelector:kHtmlAvatar];
        HTMLElement* tweetText  = [element querySelector:kHtmlTweet];
        HTMLElement* username   = [element querySelector:kHtmlUsername];
        
        NSDictionary* twitt = @{kName : username.textContent,
                               kTitle : tweetText.textContent,
                              kImageUrl : [avatar objectForKeyedSubscript:kHtmlSrc]};
        
        [serialization addObject:twitt];

        
    }
    return [serialization mutableCopy];
}

+ (NSString*)getName:(NSDictionary*)dict{
    return [dict objectForKey:kName];
}

+ (NSString*)getTitle:(NSDictionary*)dict{
    return [dict objectForKey:kTitle];
}

+ (NSString*)getImageUrl:(NSDictionary*)dict{
    return [dict objectForKey:kImageUrl];
}

@end
