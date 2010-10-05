//
//  MapaViewController.h
//  Mapa
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapaViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {

	UILabel* label;
	MKMapView* mapView;
	
}

@end

