//
//  BrushAppDelegate.h
//  Brush
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BrushViewController;

@interface BrushAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BrushViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BrushViewController *viewController;

@end

