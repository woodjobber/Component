//
//  AnimalComposite.m
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import "AnimalComposite.h"

@interface AnimalComposite ()

@property (strong, nonatomic) NSMutableArray *childList;

@end

@implementation AnimalComposite

- (instancetype)initWithAnimalName:(NSString *)name {
  
    if (self = [super init]) {
        
        _animalName = name;
        _childList = [[NSMutableArray alloc]initWithCapacity:5];
    }
    
    return self;
}

- (void)addAnimal:(id<AnimalProtocol>)animal {
    [self.childList addObject:animal];
}

- (void)removeAniaml:(id<AnimalProtocol>)animal {
    [self.childList removeObject:animal];
}

- (void)show {
    
    NSLog(@"动物名称：%@",self.animalName);
    for (id <AnimalProtocol> animal in self.childList) {
        [animal show];
    }
}


@end
