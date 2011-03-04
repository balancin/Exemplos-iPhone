//
//  BrushViewController.m
//  Brush
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "BrushViewController.h"

@implementation BrushViewController



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
	
	self.view.userInteractionEnabled = YES;
	
} 

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

//	UITouch* touch = [touches anyObject];
//	CGPoint point = [touch locationInView:self.view];
//	
//	BrushView* brush = [[BrushView alloc] init];
//	brush.frame = CGRectMake(point.x, point.y, 10, 10);
//	brush.backgroundColor = [UIColor clearColor];
//	[self.view addSubview:brush];
	
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

	UITouch* touch = [touches anyObject];
	CGPoint point = [touch locationInView:self.view];
	
	BrushView* brush = [[BrushView alloc] init];
	brush.frame = CGRectMake(point.x, point.y, 10, 10);
	brush.backgroundColor = [UIColor clearColor];
	[self.view addSubview:brush];
	
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
