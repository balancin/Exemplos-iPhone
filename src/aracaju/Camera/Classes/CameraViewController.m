//
//  CameraViewController.m
//  Camera
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "CameraViewController.h"

@implementation CameraViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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
	
	UIButton* fotoBT = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[fotoBT addTarget:self action:@selector(fotografar) forControlEvents:UIControlEventTouchUpInside];
	[fotoBT setTitle:@"Foto" forState:UIControlStateNormal];
	[fotoBT setFrame:CGRectMake(100, 100, 100, 60)];
	
	[self.view addSubview:fotoBT];
} 

- (void) fotografar {

	UIImagePickerController* imagePicker = [[UIImagePickerController alloc] init];
	imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
	imagePicker.delegate = self;
	imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
	imagePicker.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	
	[self presentModalViewController:imagePicker animated:YES];
	
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {

	[self dismissModalViewControllerAnimated:YES];
	
	UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
	UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
	imageView.frame = [[UIScreen mainScreen] applicationFrame];
	[self.view addSubview:imageView];
	
	[self.view sendSubviewToBack:imageView];
	
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
