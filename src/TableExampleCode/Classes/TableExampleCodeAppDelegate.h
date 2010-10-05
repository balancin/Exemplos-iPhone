//
//  TableExampleCodeAppDelegate.h
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableExampleCodeViewController;

@interface TableExampleCodeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TableExampleCodeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TableExampleCodeViewController *viewController;

@end

