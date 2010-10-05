//
//  AlunosParserDelegate.m
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import "AlunosParserDelegate.h"


@implementation AlunosParserDelegate

@synthesize items;

- (id)initWithParser:(NSXMLParser *)parser {
	self = [super init];
	NSLog(@"Entrou");
	
	items = [[NSMutableArray alloc] init];
	NSLog(@"%@", items);
	
	[parser setDelegate:self];
	[parser parse];
	
	return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict {
	
	NSLog(@"%@ / %@", elementName, attributeDict);
	
	if([elementName isEqualToString:@"aluno"]){
	
		Aluno* aluno = [[Aluno alloc] init];
		aluno.idade = [[attributeDict objectForKey:@"idade"] intValue];
		[items addObject:aluno];
		NSLog(@"%@ - %@", items, aluno);
		
	}
	
	param = elementName;
	
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {

	if([param isEqualToString:@"aluno"]){
		
		Aluno* aluno = [items lastObject];
		aluno.nome = string;
		//[items addObject:aluno];
		
	}
	
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

}



@end
