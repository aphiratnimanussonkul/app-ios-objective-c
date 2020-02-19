//
//  ViewController.m
//  app-ios-objective-C
//
//  Created by ODDS on 19/2/2563 BE.
//  Copyright © 2563 ODDS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController
- (IBAction)showNotiButtonTapped:(id)sender {
    [self setLabelTitle: @"Change title when click"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLabelTitle: @"Test Set string in label"];
    // Do any additional setup after loading the view.
}
- (void)setLabelTitle:(NSString*)titleString {
    [_titleLabel setText: titleString];
}


@end
