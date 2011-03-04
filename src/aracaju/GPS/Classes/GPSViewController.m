//
//  GPSViewController.m
//  GPS
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "GPSViewController.h"

@implementation GPSViewController

@synthesize locationManager;

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
	
	self.locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	
	[locationManager startUpdatingHeading];
	[locationManager startUpdatingLocation];
	
	mapView = [[MKMapView alloc] init];
	mapView.frame = [[UIScreen mainScreen] applicationFrame];
	[self.view addSubview:mapView];
	
	UIImage* arrowIm = [UIImage imageNamed:@"arrow.png"];
	arrowView = [[UIImageView alloc] initWithImage:arrowIm];
	arrowView.frame = CGRectMake(10, 10, 50, 50);
	
	[self.view addSubview:arrowView];

}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {

	NSLog(@"%f %f", newHeading.trueHeading, newHeading.magneticHeading);
	float radians = newHeading.trueHeading / 57.29578;
	
	arrowView.transform = CGAffineTransformMakeRotation(radians);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	
	NSLog(@"%f %f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
	
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = newLocation.coordinate.latitude;
	coordinate.longitude = newLocation.coordinate.longitude;
	
	MKCoordinateRegion region;
	region.center = coordinate;
	region.span.longitudeDelta = 0.005;
	region.span.latitudeDelta = 0.005;
	
	[mapView setRegion:region];
	
	Agulha* agulha = [[Agulha alloc] initWithCoordinate:coordinate name:@"Forte Apache"];
	[mapView addAnnotation:agulha];
	
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
