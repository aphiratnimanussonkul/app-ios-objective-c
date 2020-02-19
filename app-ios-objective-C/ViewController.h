//
//  ViewController.h
//  app-ios-objective-C
//
//  Created by ODDS on 19/2/2563 BE.
//  Copyright © 2563 ODDS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController<SampleProtocolDelegate> {
    __weak IBOutlet UILabel *labelDelegate;
    
    __weak IBOutlet UITextField *usernameTextField;
    __weak IBOutlet UITextField *passwordTextField;
}


@end

