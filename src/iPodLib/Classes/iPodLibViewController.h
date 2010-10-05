//
//  iPodLibViewController.h
//  iPodLib
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface iPodLibViewController : UIViewController {

	MPMusicPlayerController* musicPlayer;
	NSThread* thread;
	NSArray *playlists;
	NSMutableArray* myAccelerometer;
	UILabel* label;
	
}

- (void) trocar;

@end

