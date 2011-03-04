//
//  HadokenViewController.m
//  Hadoken
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "HadokenViewController.h"

@implementation HadokenViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString* sndPath = [[NSBundle mainBundle] pathForResource:@"hadoken" ofType:@"wav"];
	CFURLRef sndUrl = (CFURLRef) [[NSURL alloc] initFileURLWithPath:sndPath];
	
	AudioServicesCreateSystemSoundID(sndUrl, &golpe);
	
	motionManager = [[CMMotionManager alloc] init];
	motionManager.deviceMotionUpdateInterval = 0.01;
	[motionManager startDeviceMotionUpdates];
	
	NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(motion) userInfo:nil repeats:YES];
	
	motionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 320, 40)];
	[self.view addSubview:motionLabel];
	
}

- (void) motion {

	motionLabel.text = [NSString stringWithFormat:@"%6.4f %6.4f %6.4f",
						motionManager.deviceMotion.attitude.roll,
						motionManager.deviceMotion.attitude.yaw,
						motionManager.deviceMotion.attitude.pitch];
	
//	NSLog(@"%f", motionManager.deviceMotion.attitude.yaw);
//	NSLog(@"%f", motionManager.deviceMotion.attitude.roll);
//	NSLog(@"%f", motionManager.deviceMotion.attitude.pitch);
	
	//NSLog(@"%f - %i", motionManager.deviceMotion.attitude.pitch, hadokenOK);
	if(motionManager.deviceMotion.attitude.pitch > 1.3){
		hadokenOK = 1;
	}
	
	if(hadokenOK == 1 && motionManager.deviceMotion.attitude.pitch < 0.4){
		
		AudioServicesPlaySystemSound(golpe);
		AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
		hadokenOK = 0;
		
	}
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
