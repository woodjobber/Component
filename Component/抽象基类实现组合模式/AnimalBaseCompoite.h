//
//  AnimalBaseCompoite.h
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimalBaseCompoite : NSObject

@property (copy, nonatomic) NSString *aniamlName;

- (instancetype)initWithName:(NSString *)name;

- (void)addAnimal1:(AnimalBaseCompoite *)animal;

- (void)removeAniaml1:(AnimalBaseCompoite *)animal;

- (void)show1;

@end
