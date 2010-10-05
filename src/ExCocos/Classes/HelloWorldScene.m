//
//  HelloWorldLayer.m
//  ExCocos
//
//  Created by Fabio Balancin on 10/1/10.
//  Copyright Umpulo 2010. All rights reserved.
//

// Import the interfaces
#import "HelloWorldScene.h"

// HelloWorld implementation
@implementation HelloWorld

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorld *layer = [HelloWorld node];
	layer.isTouchEnabled = YES;
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
		
		// create and initialize a Label
		CCLabel* label = [CCLabel labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
		
		label.anchorPoint = ccp(1.4,0.5);
		CCAction* actRotate = [CCRotateBy actionWithDuration:1.0f angle:90];
		CCAction* moveUp = [CCMoveBy actionWithDuration:0.5f position:ccp(10,30)];
		CCAction* moveDown = [CCMoveBy actionWithDuration:0.5f position:ccp(-10,-30)];
		
		CCAction* sequence = [CCSequence actions:moveUp, moveDown, nil];
		
		
		[label runAction:[CCRepeatForever actionWithAction:actRotate]];
		[label runAction:[CCRepeatForever actionWithAction:sequence]];
		
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
