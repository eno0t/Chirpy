//
//  NetworkManager.m
//  Chirpy
//
//  Created by enot on 09.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "NetworkManager.h"
#import "SerializationTwitter.h"

NSString * const kNameUrl   = @"https://twitter.com/mailru";

@implementation NetworkManager
    
- (void)getPostsAtTwitter:(void (^)(NSArray<NSDictionary *>* objects))success
                  failure:(void (^)(NSError* error))failure{
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:kNameUrl]];
    request.HTTPMethod = @"GET";
    [request setValue:@"application/json"
   forHTTPHeaderField:@"Content-type"];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request
                                     completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        
        if (error) {
            failure(error);
            return;
        }
        
        NSString* html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSArray* serialization;
        if ([@(httpResponse.statusCode) isEqualToNumber:@200] && html && html.length > 0) {
            serialization = [SerializationTwitter serializationHtml:html];
        }
        
        if (serialization && serialization.count > 0) {
            success(serialization);
        }else{
            failure(error);
        }

    }] resume];
}

@end
