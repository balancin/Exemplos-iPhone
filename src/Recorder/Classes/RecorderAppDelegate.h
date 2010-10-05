//
//  RecorderAppDelegate.h
//  Recorder
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RecorderViewController;

@interface RecorderAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RecorderViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RecorderViewController *viewController;

@end

