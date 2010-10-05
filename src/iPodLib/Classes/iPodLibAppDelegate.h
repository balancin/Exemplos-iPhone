//
//  iPodLibAppDelegate.h
//  iPodLib
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPodLibViewController;

@interface iPodLibAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPodLibViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPodLibViewController *viewController;

@end

