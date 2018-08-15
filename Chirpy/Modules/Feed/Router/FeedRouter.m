//
//  FeedRouter.m
//  Chirpy
//
//  Created by enot on 12.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedRouter.h"
@class SettingsViewController;

@implementation FeedRouter

- (void)showSettings:(UIViewController *)controller{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *vc = [[UIStoryboard storyboardWithName:@"Settings"
                                                          bundle:nil]
                        instantiateViewControllerWithIdentifier:@"SettingsViewController"];
        [controller.navigationController pushViewController:vc animated:YES];
    });
}

@end
