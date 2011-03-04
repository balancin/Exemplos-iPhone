//
//  XMLViewController.m
//  XML
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "XMLViewController.h"

@implementation XMLViewController



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
	
	NSURLRequest* urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.0.195/teste.xml"]];
	NSError* error = nil;
	NSURLResponse* response = nil;
	
	NSData* dataOutput = [NSURLConnection sendSynchronousRequest:urlRequest 
											   returningResponse:response error:error];
	
	NSXMLParser* xmlParser = [[NSXMLParser alloc] initWithData:dataOutput];
	
	XMLParse* xmlDelegate = [[XMLParse alloc] initXMLParser:xmlParser];
	
	NSLog(@"- %@", xmlDelegate.itemsObj);
	
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
