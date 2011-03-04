//
//  HadokenViewController.h
//  Hadoken
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <CoreMotion/CoreMotion.h>

@interface HadokenViewController : UIViewController {

	CMMotionManager* motionManager;
	UILabel* motionLabel;
	SystemSoundID golpe;
	int hadokenOK;
	
}

@end

