//
//  Dicionario.h
//  Navigation
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dicionario : NSObject

-(void) banco;
-(NSString*) retornoLetra:(int) aux;
-(NSString*) retornoPalavra:(int) aux;
-(UIImage*) retornoImagem:(int) aux;
-(NSInteger) getCount;
//@property NSString *letra;
//@property NSString *palavra;
@property UIImage *img;

@end
