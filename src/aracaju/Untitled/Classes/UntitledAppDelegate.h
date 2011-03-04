//
//  UntitledAppDelegate.h
//  Untitled
//
//  Created by Fabio Balancin on 2/8/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UntitledViewController;

@interface UntitledAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UntitledViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UntitledViewController *viewController;

@end

