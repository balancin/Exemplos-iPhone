//
//  ipodViewController.m
//  ipod
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "ipodViewController.h"

@implementation ipodViewController


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
	
	MPMusicPlayerController* musicPlayer = [MPMusicPlayerController iPodMusicPlayer];
	
	MPMediaQuery* myplaylists = [MPMediaQuery playlistsQuery];
	NSArray* playlists = [myplaylists collections];
	
	for(MPMediaPlaylist* playlist in playlists){
	
		NSArray* sons = [playlist items];
		
		for(MPMediaItem* som in sons){
		
			NSLog(@"%@", [som valueForProperty:MPMediaItemPropertyTitle]);
			
		}
		
	}
	
	MPMediaPropertyPredicate* musica = [MPMediaPropertyPredicate predicateWithValue:@"Now We Are Free" forProperty:MPMediaItemPropertyTitle];
	MPMediaQuery* query = [[MPMediaQuery alloc] init];						   
	[query addFilterPredicate:musica];
	
	[musicPlayer setQueueWithQuery:query];
	[musicPlayer play];
	
	//[musicPlayer play];
	
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
