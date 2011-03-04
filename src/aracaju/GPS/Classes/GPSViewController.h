//
//  GPSViewController.h
//  GPS
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "Agulha.h"

@interface GPSViewController : UIViewController <CLLocationManagerDelegate> {

	CLLocationManager* locationManager;
	MKMapView* mapView;
	UIImageView* arrowView;
	
}

@property(nonatomic, retain) CLLocationManager* locationManager;

@end

