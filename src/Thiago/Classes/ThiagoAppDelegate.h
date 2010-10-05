//
//  ThiagoAppDelegate.h
//  Thiago
//
//  Created by Fabio Balancin on 10/2/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ThiagoViewController;

@interface ThiagoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ThiagoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ThiagoViewController *viewController;

@end

