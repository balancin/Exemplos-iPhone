//
//  plataformasAppDelegate.h
//  plataformas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class plataformasViewController;

@interface plataformasAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    plataformasViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet plataformasViewController *viewController;

@end

