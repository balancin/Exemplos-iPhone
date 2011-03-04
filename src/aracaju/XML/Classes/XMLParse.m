//
//  XMLParse.m
//  XML
//
//  Created by Fabio Balancin on 2/6/11.
//  Copyright 2011 Umpulo. All rights reserved.
//

#import "XMLParse.h"


@implementation XMLParse

@synthesize itemsObj;

- (XMLParse*) initXMLParser:(NSXMLParser*)parser {

	[parser setDelegate:self];

	self.itemsObj = [[NSMutableArray alloc] init]; 
	
	[parser parse];
	
	return self;
	
}

- (void)parser:(NSXMLParser *)parser 
	didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict {

	NSLog(@"%@ %@", elementName, attributeDict);
	
	if([elementName isEqualToString:@"aluno"]){
	
		NSLog(@"Entrou");
		NSMutableArray* aluno = [[NSMutableArray alloc] init];
		[aluno addObject:[attributeDict objectForKey:@"nome"]];
		
		[self.itemsObj addObject:aluno];
		
	}
	
	last = elementName;
	
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {

	NSLog(@"%@ string", string);
	
	if([last isEqualToString:@"aluno"]){
	
		NSMutableArray* aluno = [self.itemsObj lastObject];
		[aluno addObject:string];
		
		NSLog(@"%@", self.itemsObj);
		
	}
	
}

@end
