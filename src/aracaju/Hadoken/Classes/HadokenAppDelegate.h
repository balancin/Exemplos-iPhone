//
//  HadokenAppDelegate.h
//  Hadoken
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HadokenViewController;

@interface HadokenAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HadokenViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HadokenViewController *viewController;

@end

