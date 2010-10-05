//
//  ViewBasedExampleAppDelegate.h
//  ViewBasedExample
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TesteViewController.h"

@class ViewBasedExampleViewController;

@interface ViewBasedExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TesteViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TesteViewController *viewController;

@end

