//
//  Dicionario.m
//  Navigation
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario {
    NSArray *letras;
    NSArray *palavras;
    NSArray *imagens;
}
//@synthesize letra,palavra,img;

-(void) banco {
    letras = [[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    palavras = [[NSArray alloc] initWithObjects:@"Audi",@"BMW",@"Chevrolet",@"Dodge",@"Effa",@"Ferrari",@"Geely",@"Honda",@"Iveco",@"Jaguar",@"Kia",@"Lamborghini",@"Maserati",@"Nissan",@"Opala",@"Porsche",@"Quoris",@"Ram",@"Smart",@"Toyota",@"Uno",@"Volvo",@"Wrangler",@"X60",@"Yugo",@"Zoe", nil];
    imagens = [[NSArray alloc] initWithObjects:@"audi.png",@"bmw.png",@"chevrolet.png",@"dodge.png",@"effa.png",@"ferrari.png",@"geely.png",@"honda.png",@"iveco.png",@"jaguar.png",@"kia.png",@"lamborghini.png",@"maserati.png",@"nissan.png",@"opala.png",@"porsche.png",@"quoris.png",@"ram.png",@"smart.png",@"toyota.png",@"uno.png",@"volvo.png",@"wrangler.png",@"x60.png",@"yugo.png",@"zoe.png", nil];
}

-(NSInteger) getCount
{
    return [letras count];
}

//Irá retornar uma letra em uma determinada posição do vetor.
-(NSString *) retornoLetra:(int) aux {
   return [letras objectAtIndex:aux];
}

-(NSString *) retornoPalavra:(int) aux {
    return [palavras objectAtIndex:aux];
}

-(UIImage *) retornoImagem:(int) aux {
    UIImage *img= [UIImage imageNamed:[imagens objectAtIndex:aux]];
    return img;
}



@end
