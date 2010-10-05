//
//  MapaAppDelegate.h
//  Mapa
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapaViewController;

@interface MapaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapaViewController *viewController;

@end

