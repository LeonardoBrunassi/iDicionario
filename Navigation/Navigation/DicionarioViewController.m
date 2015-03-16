//
//  DicionarioViewController.m
//  Navigation
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "DicionarioViewController.h"
#import "Dicionario.h"

@interface DicionarioViewController (){
    Dicionario *dic;
    UILabel *label;
    UIImageView *imageView;
    int aux;
}

@end

@implementation DicionarioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dic = [[Dicionario alloc] init];
    [dic banco]; //inicializa os meus arrays.
    
    
    //BOTÃO NEXT.
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //BOTÃO BACK.
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem=back;
    
    //BOTÃO LABEL.
    label = [[UILabel alloc] initWithFrame:CGRectMake(130, 450, 150, 20)];
    label.text = [dic retornoPalavra:aux];
    //[label sizeToFit];
    [self.view addSubview:label];
    
    //IMAGEM.
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 150, 80)]; // x, y , largura, altura
    imageView.image = [dic retornoImagem:aux];
    [self.view addSubview:imageView];
    
    
}

-(void)next:(id)sender {
//    //DicionarioViewController *proximo = [[DicionarioViewController alloc]
//                                     initWithNibName:nil
//                                     bundle:NULL];
//    //[self.navigationController pushViewController:proximo
//                                         animated:YES];
    aux++;
    self.navigationItem.title = [dic retornoLetra:aux];
    label.text = [dic retornoPalavra:aux];
    imageView.image = [dic retornoImagem:aux];
}

-(void)back:(id)back {
    aux--;
    self.navigationItem.title = [dic retornoLetra:aux];
    label.text = [dic retornoPalavra:aux];
    imageView.image = [dic retornoImagem:aux];
}

-(void)viewWillAppear:(BOOL)animated {
    self.navigationItem.title = [dic retornoLetra:aux];
    label.text = [dic retornoPalavra:aux];
    //self = [dic retornoPalavra:aux];
}




    
    
    
    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
