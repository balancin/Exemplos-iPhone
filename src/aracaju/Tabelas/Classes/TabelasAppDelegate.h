//
//  TabelasAppDelegate.h
//  Tabelas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabelasViewController;

@interface TabelasAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TabelasViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TabelasViewController *viewController;

@end

