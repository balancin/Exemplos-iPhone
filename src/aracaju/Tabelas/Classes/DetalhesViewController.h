//
//  DetalhesViewController.h
//  Tabelas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetalhesViewController : UIViewController <UITextFieldDelegate> {

	NSArray* frutasArray;
	
}

@property(nonatomic, retain) NSArray* frutasArray;

@end
