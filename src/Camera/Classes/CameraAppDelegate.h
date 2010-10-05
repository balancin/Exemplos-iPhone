//
//  CameraAppDelegate.h
//  Camera
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CameraViewController;

@interface CameraAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CameraViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CameraViewController *viewController;

@end

