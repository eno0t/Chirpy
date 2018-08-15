//
//  ViewController.m
//  Chirpy
//
//  Created by enot on 08.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "FeedViewController.h"
#import "FeedPresenter.h"

@interface FeedViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FeedViewController

@synthesize presenter;

- (void)viewDidLoad {
    [super viewDidLoad];
    presenter = [[FeedPresenter alloc] initWithView:self];
    
    UIBarButtonItem *settings = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"settings"]
                                                             style:UIBarButtonItemStylePlain
                                                            target:presenter
                                                            action:@selector(showSettings)];
    
    self.navigationItem.rightBarButtonItem = settings;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)updateTableView{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (void)updateTime:(NSString*)time{
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:time
                                                                    style:UIBarButtonItemStylePlain
                                                                    target:nil
                                                                    action:nil];
    [leftButton setEnabled:NO];
    self.navigationItem.leftBarButtonItem = leftButton;
}

@end
