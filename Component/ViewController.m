//
//  ViewController.m
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import "ViewController.h"

#import "AnimalComposite1.h"

#import "AnimalLeaf1.h"

#import "AnimalComposite.h"

#import "AnimalLeaf.h"

//#define kPROTOCOL

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 根节点
#ifdef kPROTOCOL
    AnimalComposite *root =  [[AnimalComposite alloc]initWithAnimalName:@"大牛"];
    [root addAnimal:[[AnimalLeaf alloc] initWithAnimalName:@"大牛的儿子"]];
    
    
    AnimalComposite *composite =  [[AnimalComposite alloc]initWithAnimalName:@"大牛的女儿"];
    [composite addAnimal:[[AnimalLeaf alloc] initWithAnimalName:@"大牛的女儿的孩子"]];
    
    [root addAnimal:composite];
    
    AnimalComposite *composite2 =  [[AnimalComposite alloc]initWithAnimalName:@"大牛的外孙女"];
    [composite2 addAnimal:[[AnimalLeaf alloc] initWithAnimalName:@"大牛的外孙女的孩子"]];
    
    [root addAnimal:composite2];
    
    [root show];
    
#else 
    
    AnimalComposite1 *root1 = [[AnimalComposite1 alloc]initWithName:@"1"];
    [root1 addAnimal1:[[AnimalLeaf1 alloc] initWithName:@"1-1"]];
    AnimalComposite1 *composite =  [[AnimalComposite1 alloc]initWithName:@"1-2"];
    [composite addAnimal1:[[AnimalLeaf1 alloc] initWithName:@"1-2-1"]];
    [root1 addAnimal1:composite];
    
    AnimalComposite1 *composite2 =  [[AnimalComposite1 alloc]initWithName:@"1-2-2"];
    [composite2 addAnimal1:[[AnimalLeaf1 alloc] initWithName:@"1-2-2-1"]];
    [composite2 addAnimal1:[[AnimalLeaf1 alloc] initWithName:@"1-2-2-2"]];
    [composite2 addAnimal1:[[AnimalLeaf1 alloc] initWithName:@"1-2-2-3"]];
    [root1 addAnimal1:composite2];
    
    AnimalComposite1 *composite3 =  [[AnimalComposite1 alloc]initWithName:@"1-3"];
    AnimalComposite1 *composite4 =  [[AnimalComposite1 alloc]initWithName:@"1-4"];
    AnimalComposite1 *composite5 =  [[AnimalComposite1 alloc]initWithName:@"1-5"];
    
    [root1 addAnimal1:composite3];
    [root1 addAnimal1:composite4];
    [root1 addAnimal1:composite5];
    
    [root1 show1];
    NSLog(@"------移除------");
    
    [root1 removeAniaml1:composite2];
    [root1 show1];
    
    
#endif
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
