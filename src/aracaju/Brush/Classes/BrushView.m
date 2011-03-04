//
//  BrushView.m
//  Brush
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "BrushView.h"


@implementation BrushView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
	
	CGContextSetLineWidth(context, 2.0);
	
//	CGContextMoveToPoint(context, 40, 40);
//	
//	CGContextAddLineToPoint(context, 100, 200);
	
	CGContextAddEllipseInRect(context, CGRectMake(0, 0, 10, 10));
	
	CGContextStrokePath(context);
	
} 
 
- (void)dealloc {
    [super dealloc];
}


@end
