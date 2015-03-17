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
    
    UIImageView *imageView;
    
}

@end

@implementation DicionarioViewController
@synthesize label,aux,imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    dic = [[Dicionario alloc] init];
    [dic banco]; //inicializa os meus arrays.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
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
    DicionarioViewController *proximo = [[DicionarioViewController alloc] init];
    [self.navigationController pushViewController:proximo animated:YES];
    //[self.navigationController  popToViewController:proximo animated:YES];
    
    
    NSMutableArray *arrayVet = [NSMutableArray arrayWithArray:[self.navigationController childViewControllers]]; // child devolve um array de view controlers.
    
    [arrayVet removeObject:self];
    [self.navigationController setViewControllers:arrayVet];
    NSLog(@"%lu", [[self.navigationController childViewControllers] count]);
    

    proximo.aux = aux + 1;
    self.navigationItem.title = [dic retornoLetra:aux];
    proximo.label.text = [dic retornoPalavra:aux];
    proximo.imageView.image = [dic retornoImagem:aux];
}

-(void)back:(id)back {
    DicionarioViewController *anterior = [[DicionarioViewController alloc] init];
    [self.navigationController  pushViewController:anterior animated:YES];
    
    NSMutableArray *arrayVet = [NSMutableArray arrayWithArray:[self.navigationController childViewControllers]]; // child devolve um array de view controlers.
    
    [arrayVet removeObject:self];
    [self.navigationController setViewControllers:arrayVet];
    NSLog(@"%lu", [[self.navigationController childViewControllers] count]);
    
    anterior.aux = aux - 1;
    self.navigationItem.title = [dic retornoLetra:aux];
    anterior.label.text = [dic retornoPalavra:aux];
    anterior.imageView.image = [dic retornoImagem:aux];
}

-(void)viewWillAppear:(BOOL)animated {
    self.navigationItem.title = [dic retornoLetra:aux];
    label.text = [dic retornoPalavra:aux];
    
    

    imageView.image = [dic retornoImagem:aux];
    [imageView setFrame:CGRectMake(80, 200, 150, 80)];
    
    
    
    //self = [dic retornoPalavra:aux];
}

-(void)viewDidAppear:(BOOL)animated {
    [UIView animateWithDuration:2 animations:^{
        imageView.transform = CGAffineTransformMakeScale(1.8, 2.8);
    }];
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
