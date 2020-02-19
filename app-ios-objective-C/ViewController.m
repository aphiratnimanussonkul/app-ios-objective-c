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
    
    //Init protocol
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc] init];
    sampleProtocol.delegate = self;
    [labelDelegate setText:@"Processing Delegate"];
    [sampleProtocol startSampleProcess];
    
}
- (void)setLabelTitle:(NSString*)titleString {
    [_titleLabel setText: titleString];
}

#pragma mark - SampleProtocol delegate
-(void) processCompleted {
    [labelDelegate setText: @"Process completed"];
}


@end
