//
//  TelaInfuncionalViewController.h
//  IBExample
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TelaInfuncionalViewController : UIViewController {
	
	IBOutlet UIButton* btn;
	IBOutlet UITextField* textField;
	
}

@property(nonatomic, retain) IBOutlet UIButton* btn;
@property(nonatomic, retain) IBOutlet UITextField* textField;

- (IBAction) falar:(id)sender;

@end

