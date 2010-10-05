//
//  touchAppDelegate.h
//  touch
//
//  Created by Fabio Balancin on 6/4/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class touchViewController;

@interface touchAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    touchViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet touchViewController *viewController;

@end

