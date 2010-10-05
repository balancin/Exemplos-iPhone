//
//  AlunosParserDelegate.h
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aluno.h";

@interface AlunosParserDelegate : NSObject <NSXMLParserDelegate> {

	NSMutableArray* items;
	NSString* param;
}

- (id)initWithParser:(NSXMLParser *)parser;

@property(nonatomic, retain) NSMutableArray* items;

@end
