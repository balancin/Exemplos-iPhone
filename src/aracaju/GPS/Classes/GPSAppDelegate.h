//
//  GPSAppDelegate.h
//  GPS
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GPSViewController;

@interface GPSAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GPSViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GPSViewController *viewController;

@end

