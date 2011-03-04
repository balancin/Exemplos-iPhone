//
//  Agulha.m
//  GPS
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "Agulha.h"


@implementation Agulha

@synthesize name, coordinate;

-(id)initWithCoordinate:(CLLocationCoordinate2D)coord name:(NSString*)name {

	self.name = name;
	self.coordinate = coord;
	
	return self;
	
}

@end
