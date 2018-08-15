//
//  FeedViewController+TableView.m
//  Chirpy
//
//  Created by enot on 14.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedViewController+TableView.h"
#import "FeedPresenter.h"
#import "FeedTableViewCell.h"

@implementation FeedViewController (TableView)

@end

@interface FeedViewController (UITableViewDelegate) <UITableViewDelegate>
@end

@implementation FeedViewController (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140.0;
}

@end

@interface FeedViewController (UITableViewDataSource) <UITableViewDataSource>
@end

NSString * const kCellName = @"FeedTableViewCell";

@implementation FeedViewController (UITableViewDataSource)

- (UITableViewCell *)tableView:(nonnull UITableView *)tableView
         cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    FeedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellName];
    if (cell == nil) {
        cell = [[FeedTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:kCellName];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    
    Post *post = [self.presenter postWithIndexPath:indexPath];
    [cell configure:post];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.presenter countPosts];
}

@end
