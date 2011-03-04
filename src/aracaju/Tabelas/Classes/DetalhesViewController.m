    //
//  DetalhesViewController.m
//  Tabelas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "DetalhesViewController.h"

@implementation DetalhesViewController

@synthesize frutasArray;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (id)initWithFruta:(NSArray*)fruta {

	self = [super init];
	NSLog(@"%@", fruta);
	
	self.frutasArray = [NSArray arrayWithArray:fruta];
	
	return self;
	
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UILabel* nome = [[UILabel alloc] init];
	nome.frame = CGRectMake(20, 50, 100, 40);
	nome.text = [frutasArray objectAtIndex:0];
	nome.backgroundColor = [UIColor clearColor];
	
	[self.view addSubview:nome];
	
	UITextField* preco = [[UITextField alloc] init];
	preco.delegate = self;
	preco.frame = CGRectMake(20, 90, 150, 30); 
	preco.backgroundColor = [UIColor whiteColor];
	
	[self.view addSubview:preco];
	
//	UIButton* gravarBT = [[UIButton alloc] initWithFrame:CGRectMake(20,180,80, 30)];
//	[self.view addSubview:gravarBT];
	
} 

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	
	[textField resignFirstResponder];
	[self gravar:textField.text];
	
	return YES;
	
}

- (void)gravar:(NSString*)texto {
	
	NSString* pasta = [[NSBundle mainBundle] resourcePath];
	pasta = [pasta stringByAppendingString:@"/spfc.plist"]; 
	NSMutableArray* lista = [NSMutableArray arrayWithContentsOfFile:pasta];
	
	[lista replaceObjectAtIndex:[[self.frutasArray objectAtIndex:1] intValue] withObject:texto];
	NSLog(@"%@", lista);
	
	//NSLog(@"%@ - %@", [frutasArray objectAtIndex:0], [lista objectAtIndex:[[frutasArray objectAtIndex:1] intValue]]);
	
	NSLog(@"Gravando %@", texto);
	
	
	NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString* pasta2 = [paths objectAtIndex:0];
	pasta2 = [pasta2 stringByAppendingString:@"/spfc.plist"];
	NSLog(@"%@", pasta2);
	
	[lista writeToFile:pasta2 atomically:NO];
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
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
