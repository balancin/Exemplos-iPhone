//
//  MapaViewController.m
//  Mapa
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import "MapaViewController.h"

@implementation MapaViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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
	
	mapView =[[MKMapView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	mapView.userInteractionEnabled = YES;
	mapView.frame = CGRectMake(0, 0, 320, 435);
//	mapView.showsUserLocation = YES;
	[self.view addSubview:mapView];
	
	CLLocationManager* myLocation = [[CLLocationManager alloc] init];
	myLocation.delegate = self;
	[myLocation startUpdatingHeading];
	[myLocation startUpdatingLocation];
	
	label = [[UILabel alloc] init];
	label.frame = CGRectMake(10, 10, 420, 40);
	[self.view addSubview:label];
	
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {

	NSLog(@"Falhou");
	
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	
	NSLog(@"%f %f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
	
	
	MKCoordinateRegion region;
	region.center = newLocation.coordinate;
	region.span.latitudeDelta = 1;
	region.span.longitudeDelta = 1;
	
	[mapView setRegion:region];
	
	label.text = [NSString stringWithFormat:@"%f %f", newLocation.coordinate.latitude, newLocation.coordinate.longitude];
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
