//
//  Agulha.h
//  GPS
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Agulha : NSObject <MKAnnotation> {

	NSString* name;
	CLLocationCoordinate2D coordinate;
	
}

@property(nonatomic, retain) NSString* name;
@property(nonatomic, readwrite) CLLocationCoordinate2D coordinate;

-(id)initWithCoordinate:(CLLocationCoordinate2D)coord name:(NSString*)name;

@end
