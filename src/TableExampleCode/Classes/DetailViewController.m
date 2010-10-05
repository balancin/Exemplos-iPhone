    //
//  DetailViewController.m
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController

@synthesize aluno;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
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
	
	UITextField* label = [[UITextField alloc] init];
	label.frame = CGRectMake(20, 20, 200, 30);
//	label.enabled = YES;
	label.backgroundColor = [UIColor darkGrayColor];
	[self.view addSubview:label];
	
	label.text = aluno.nome;
	
	bt_mail = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	//[bt_mail setBackgroundImage:[UIImage imageNamed:@"bt_popover.png"] forState:UIControlStateNormal];
	[bt_mail setFrame:CGRectMake(100, 100, 190, 40)];
	[bt_mail setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[bt_mail setFont:[UIFont boldSystemFontOfSize:16]];
	[bt_mail setTitle:@"Salvar" forState:UIControlStateNormal];
	[bt_mail addTarget:self action:@selector(enviar) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:bt_mail];
	
}

-(void) enviar {

	NSLog(@"Enviar!!!!"); 
	[bt_mail becomeFirstResponder];
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
