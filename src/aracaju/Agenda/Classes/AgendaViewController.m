//
//  AgendaViewController.m
//  Agenda
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "AgendaViewController.h"

@implementation AgendaViewController



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

	//NSLog([[UIDevice currentDevice] name]);
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://86960384"]];
	
//	ABAddressBookRef addressBook = ABAddressBookCreate();
//	
//	CFArrayRef pessoas = ABAddressBookCopyArrayOfAllPeople(addressBook);
//	CFIndex nPessoas = ABAddressBookGetPersonCount(addressBook);
//	
//	for (int i = 0; i < nPessoas; i++) {
//		
//		ABRecordRef ref = CFArrayGetValueAtIndex(pessoas, i);
//		CFStringRef nome = ABRecordCopyValue(ref, kABPersonFirstNameProperty);
//		
//		NSString* nomeStr = (NSString*)nome;
//		NSLog(@"nome: %@", nomeStr);
//		
//		CFRelease(ref);
//		
//	}
//	
//	CFRelease(addressBook);
	
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
