//
//  ListaViewController.h
//  Tabelas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetalhesViewController.h"

@interface ListaViewController : UITableViewController {

	NSArray* listaObjs;
	
}

@property(nonatomic, retain) NSArray* listaObjs;

@end
