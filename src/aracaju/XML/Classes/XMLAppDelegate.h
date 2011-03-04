//
//  XMLAppDelegate.h
//  XML
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMLViewController;

@interface XMLAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    XMLViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet XMLViewController *viewController;

@end

