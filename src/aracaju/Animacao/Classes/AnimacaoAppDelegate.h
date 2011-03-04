//
//  AnimacaoAppDelegate.h
//  Animacao
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnimacaoViewController;

@interface AnimacaoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AnimacaoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AnimacaoViewController *viewController;

@end

