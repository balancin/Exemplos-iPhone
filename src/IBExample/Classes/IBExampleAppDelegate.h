//
//  IBExampleAppDelegate.h
//  IBExample
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IBExampleViewController;

@interface IBExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IBExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IBExampleViewController *viewController;

@end

