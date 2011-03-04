//
//  TabelasViewController.m
//  Tabelas
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "TabelasViewController.h"

@implementation TabelasViewController



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
	
	NSString* pasta;
	
	NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	pasta = [paths objectAtIndex:0];
	pasta = [pasta stringByAppendingString:@"/spfc.plist"];
//	NSLog(@"%@", pasta2);
	
	NSFileManager* fileManager = [NSFileManager defaultManager];
	if(![fileManager fileExistsAtPath:pasta])
	{ 
		pasta = [[NSBundle mainBundle] resourcePath];
		pasta = [pasta stringByAppendingString:@"/spfc.plist"];
		NSLog(@"%@", pasta);
	}
	
	NSArray* lista = [NSArray arrayWithContentsOfFile:pasta];//[NSArray arrayWithObjects:@"amora", @"morango", @"banana", @"uva", @"laranja", @"limao", nil];

	ListaViewController* listaView = [[ListaViewController alloc] initWithLista:lista];
	listaView.title = @"Frutas";
	listaView.tableView.frame = CGRectMake(0, 0, 320, 460);
	
	UINavigationController* navegador = [[UINavigationController alloc] initWithRootViewController:listaView];
	
//	UIButton* perfil= [[UIButton alloc] initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].applicationFrame.size.width*0.109, [UIScreen mainScreen].applicationFrame.size.height*0.064)];
//    
//    [perfil addTarget:self action:@selector(newView) forControlEvents:UIControlEventTouchUpInside];
//	
//    UIBarButtonItem *objBarButtonItemRight = [[UIBarButtonItem alloc] initWithCustomView:perfil];
//	
	
//	navegador.navigationItem.rightBarButtonItem = objBarButtonItemRight;
	navegador.view.frame = CGRectMake(0, 0, 320, 460);
	
	[self.view addSubview:navegador.view] ;
	
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
