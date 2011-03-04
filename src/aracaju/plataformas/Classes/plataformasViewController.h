//
//  plataformasViewController.h
//  plataformas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface plataformasViewController : UIViewController {

	NSString* brinquedo;
	int idade;
	
}

@property(nonatomic, retain) NSString* brinquedo;
@property(nonatomic, readwrite) int idade;

@end

