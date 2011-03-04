//
//  camadasAppDelegate.h
//  camadas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class camadasViewController;

@interface camadasAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    camadasViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet camadasViewController *viewController;

@end

