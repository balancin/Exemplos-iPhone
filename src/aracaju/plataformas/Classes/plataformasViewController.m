//
//  plataformasViewController.m
//  plataformas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "plataformasViewController.h"

@implementation plataformasViewController

@synthesize brinquedo, idade; 

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
	
	NSArray* ar = [NSArray arrayWithObjects:@"a", @"b", nil];
	NSLog(@"lalala %i %@", 43, ar);
	
	brinquedo = @"bola";
	
	NSLog(@"%@", brinquedo);
	
	brinquedo = [brinquedo stringByAppendingString:@" feio"];
	
	NSLog(@"%@", brinquedo);
	
	NSMutableArray* ar2 = [[NSMutableArray alloc] init];
	[ar2 addObject:@"a"];
	[ar2 addObject:@"b"];
	
	NSLog(@"%@", [ar2 objectAtIndex:0]);
	
	if([brinquedo isEqualToString:@"bola"]){
		
	}
	
	NSLog(@"%i", [ar2 indexOfObject:@"a"]);
	
	NSDictionary* dic1 = [NSDictionary dictionaryWithObjectsAndKeys:@"brinquedo",@"bola",@"idade",[NSNumber numberWithInt:5],nil];
	
	NSLog(@"%@", dic1);
	
	NSMutableDictionary* dic2 = [[NSMutableDictionary alloc] init];
	[dic2 setValue:@"223" forKey:@"idade"];
	
	NSLog(@"%@", [dic2 objectForKey:@"idade"]);
	
	for(int i = 0; i < 32; i++){
	
		NSLog(@"%i", i);
		
	}
	
	NSLog(@"%i", ([[dic2 objectForKey:@"idade"] isEqualToString:@"223"]) ? 2 : 3);
	
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
