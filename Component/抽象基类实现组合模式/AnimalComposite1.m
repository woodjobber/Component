
//
//  AnimalComposite.m
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import "AnimalComposite1.h"
@interface AnimalComposite1 ()

@property (strong ,nonatomic) NSMutableArray *childList;

@end

@implementation AnimalComposite1

- (instancetype)initWithName:(NSString *)name {
    if (self = [super initWithName:name]) {
        
         self.aniamlName = name;
        _childList = [NSMutableArray new];
    }
    
    return self;
}

- (void)addAnimal1:(AnimalBaseCompoite *)animal {
    [self.childList addObject:animal];
}

- (void)removeAniaml1:(AnimalBaseCompoite *)animal {
    [self.childList removeObject:animal];
}

- (void)show1 {
    NSLog(@"动物 父节点 :%@", self.aniamlName);
    for (AnimalBaseCompoite * compoite in self.childList) {
        [compoite show1];
    }
}

@end
