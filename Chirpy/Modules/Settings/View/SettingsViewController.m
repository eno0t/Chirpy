//
//  SettingsViewController.m
//  Chirpy
//
//  Created by Дементьев Степан on 15.08.2018.
//  Copyright © 2018 enoot. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsPresenter.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *switchImage;

@end

@implementation SettingsViewController

@synthesize presenter;

- (void)viewDidLoad {
    [super viewDidLoad];
    presenter = [[SettingsPresenter alloc] initWithView:self];
    [_switchImage setOn:[presenter isVisibleImage]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)actionSwitchImage:(UISwitch *)sender {
    [presenter setVisibleImage:sender.isOn];
}

@end
