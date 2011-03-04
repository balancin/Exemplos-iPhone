//
//  AnimacaoViewController.m
//  Animacao
//
//  Created by Fabio Balancin on 2/5/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "AnimacaoViewController.h"

@implementation AnimacaoViewController



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
	
	self.view.userInteractionEnabled = YES;
	
	UIImage* bolaIm = [UIImage imageNamed:@"bola.png"];
	UIImageView* bolaImView = [[UIImageView alloc] init];
	bolaImView.image = bolaIm;
	bolaImView.frame = CGRectMake(0, 0, 50, 50);
	//bolaImView.center = CGPointMake(0, 0);
	
	bola = [[UIView alloc] init];
	bola.backgroundColor = [UIColor clearColor];
	bola.frame = CGRectMake(50, 50, 50, 50);
	[bola addSubview:bolaImView]; 
	
	[self.view addSubview:bola]; 
	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

	NSLog(@"a");
	
	UITouch* touch = [touches anyObject];
	CGPoint ponto = [touch locationInView:self.view];
	
	[UIView beginAnimations:@"anim" context:self];
	[UIView setAnimationDuration:1.0];
	bola.center = ponto;//CGPointMake(arc4random()%320, arc4random()%460); 
	int size = (arc4random()%20)*0.1;
	//bola.transform = CGAffineTransformMakeScale(size, size);
	bola.transform = CGAffineTransformMakeRotation(arc4random()%360);
	bola.backgroundColor = [UIColor colorWithRed:(arc4random()%70)*0.1 green:(arc4random()%50)*0.1 blue:(arc4random()%100)*0.1 alpha:1];
	[UIView commitAnimations];
	
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

	UITouch* touch = [touches anyObject];
	CGPoint ponto = [touch locationInView:self.view];
	
//	[UIView beginAnimations:@"anim" context:self];
//	[UIView setAnimationDuration:1.0];
//	bola.center = ponto;//CGPointMake(arc4random()%320, arc4random()%460); 
//	int size = (arc4random()%20)*0.1;
//	//bola.transform = CGAffineTransformMakeScale(size, size);
//	bola.transform = CGAffineTransformMakeRotation(arc4random()%360);
//	bola.backgroundColor = [UIColor colorWithRed:(arc4random()%70)*0.1 green:(arc4random()%50)*0.1 blue:(arc4random()%100)*0.1 alpha:1];
//	[UIView commitAnimations];
	
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
