//
//  ipodAppDelegate.h
//  ipod
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ipodViewController;

@interface ipodAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ipodViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ipodViewController *viewController;

@end

