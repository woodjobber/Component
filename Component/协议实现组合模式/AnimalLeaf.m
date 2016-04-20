//
//  AnimalLeaf.m
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import "AnimalLeaf.h"

@implementation AnimalLeaf

- (instancetype)initWithAnimalName:(NSString *)animalName {

    if (self = [super init]) {
        _animalName = animalName;
    }
    
    return self;
}

- (void)addAnimal:(id<AnimalProtocol>)animal {
   // 单个对象 无需 实现
}

- (void)removeAniaml:(id<AnimalProtocol>)animal {
  // 单个对象 无需 实现
}

-(void)show {
    NSLog(@"动物名：%@",self.animalName);
}

@end
