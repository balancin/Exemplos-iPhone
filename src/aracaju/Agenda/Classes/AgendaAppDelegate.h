//
//  AgendaAppDelegate.h
//  Agenda
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AgendaViewController;

@interface AgendaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AgendaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AgendaViewController *viewController;

@end

