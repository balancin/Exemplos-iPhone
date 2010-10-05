//
//  RecorderViewController.h
//  Recorder
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RecorderViewController : UIViewController <AVAudioRecorderDelegate, AVAudioPlayerDelegate> {
	AVAudioPlayer* avPlayer;
	NSURL* recordedTmpFile;
	NSString* recordedPath;
	AVAudioRecorder *recorder;
}

@end

