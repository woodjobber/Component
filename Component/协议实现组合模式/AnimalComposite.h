//
//  AnimalComposite.h
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalProtocol.h"

@interface AnimalComposite : NSObject <AnimalProtocol>

@property (copy, nonatomic) NSString *animalName;

- (instancetype)initWithAnimalName:(NSString *)animalName;

@end
