//
//  Aluno.h
//  TableExampleCode
//
//  Created by Fabio Balancin on 9/30/10.
//  Copyright 2010 Umpulo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Aluno : NSObject {

	NSString* nome;
	int idade;
	
}

@property(nonatomic, retain) NSString* nome;
@property(nonatomic, readwrite) int idade;

@end
