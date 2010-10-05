//
//  ListaTableViewController.h
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Aluno.h"
#import "DetailViewController.h"

@interface ListaTableViewController : UITableViewController {

	NSArray* items;
	UINavigationController* navigationController;
	
}

@property(nonatomic, retain) NSArray* items;
@property(nonatomic, retain) UINavigationController* navigationController;

@end
