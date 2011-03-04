//
//  XMLParse.h
//  XML
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XMLParse : NSObject <NSXMLParserDelegate> {
	
	NSMutableArray* itemsObj;
	NSString* last;
	
}

@property(nonatomic, retain) NSMutableArray* itemsObj;

- (XMLParse*) initXMLParser:(NSXMLParser*)parser;

@end
