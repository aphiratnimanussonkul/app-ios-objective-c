//
//  ViewController.m
//  app-ios-objective-C
//
//  Created by ODDS on 19/2/2563 BE.
//  Copyright © 2563 ODDS. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong)NSString *username;
@property (nonatomic, strong)NSString *password;
@end

@implementation ViewController
- (IBAction)showNotiButtonTapped:(id)sender {
    [self setLabelTitle: @"Change title when click"];
    NSLog(@"Click Button");
}
- (IBAction)loginButtonTapped:(id)sender {
    NSLog(@"Click Login");
    if ([usernameTextField hasText] && [passwordTextField hasText]) {
        _username = [usernameTextField text];
        _password = [passwordTextField text];
        NSLog(@"Username: %@", [usernameTextField text]);
        NSLog(@"Password: %@", [passwordTextField text]);
        if ([_username  isEqual: @"Aphirat"] && [_password  isEqual: @"1234"]) {
            NSLog(@"Login Success!");
        
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            UIViewController * vc= [storyboard instantiateViewControllerWithIdentifier:@"home"];
            vc.modalPresentationStyle = UIModalPresentationFullScreen;
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
    }
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
