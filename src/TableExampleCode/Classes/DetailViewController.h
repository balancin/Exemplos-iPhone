//
//  DetailViewController.h
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Aluno.h"

@interface DetailViewController : UIViewController {

	Aluno* aluno;
	UIButton *bt_mail;
}

@property(nonatomic, retain) Aluno* aluno;

@end
