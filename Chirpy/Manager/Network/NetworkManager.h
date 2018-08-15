//
//  NetworkManager.h
//  Chirpy
//
//  Created by enot on 09.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkManager : NSObject

- (void)getPostsAtTwitter:(void (^)(NSArray<NSDictionary *>* objects))success
                  failure:(void (^)(NSError* error))failure;

@end
