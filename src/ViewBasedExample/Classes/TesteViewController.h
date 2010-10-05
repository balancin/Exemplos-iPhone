//
//  TesteViewController.h
//  ViewBasedExample
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Linha.h"

@interface TesteViewController : UIViewController {

	UIView* viewB;
	UIView* viewC;
}

- (void) guiaMovimento:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context;

@end
