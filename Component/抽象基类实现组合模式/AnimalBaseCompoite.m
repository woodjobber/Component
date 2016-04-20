
//
//  AnimalBaseCompoite.m
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import "AnimalBaseCompoite.h"


@implementation AnimalBaseCompoite

- (instancetype)initWithName:(NSString *)name {

    if (self = [super init]) {
        
        _aniamlName = name;
    }
    
    return self;
}

//子类 实现
- (void)addAnimal1:(AnimalBaseCompoite *)animal {
  
}

- (void)removeAniaml1:(AnimalBaseCompoite *)animal{

}

- (void)show1{

}


@end
