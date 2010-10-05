//
//  ThiagoViewController.m
//  Thiago
//
//  Created by Fabio Balancin on 10/2/10.
//  Copyright Umpulo 2010. All rights reserved.
//

#import "ThiagoViewController.h"

@implementation ThiagoViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	CGRect buttonRect2 = CGRectMake(90, 15, 30, 21);
	UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[btn3 setFrame:buttonRect2];	
	[btn3 setTitle:@"Tirar Foto" forState:UIControlStateNormal]; 
	[btn3 addTarget:self action:@selector(tirarfoto) forControlEvents:UIControlEventTouchUpInside]; 
	[self.view addSubview:btn3];

	 CGRect buttonRect3 = CGRectMake(23, 20, 35, 15);
	UIButton *btn2 = [UIButton buttonWithType:UIButtonTypebuttonType];
	 [btn2 setFrame:buttonRect3];
	 [bt2 setTitle:@"calcel" forState:UIControlStateNormal];
	  [btn2 addTarget:self action:@selector(cancelar) forControlEvents:UIControlEventTouchUpInside];
	  [self.view addSubview:btn2];
	 
	 
	 
	 
}
	- (void)tirarfoto {
		
		UIImagePickerController* imagePicker = [[UIImagePickerController alloc] init];
		imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
		imagePicker.delegate = self;
		[self presentModalViewController:imagePicker animated:YES];
		
	}
	

	  - (void)cancelar {
		  
		  NSLog(@"oi");
		  
	  }







/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
