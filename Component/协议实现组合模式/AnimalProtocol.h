//
//  AnimalProtocol.h
//  Component
//
//  Created by chengbin on 16/4/19.
//  Copyright © 2016年 chengbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AnimalProtocol <NSObject>

@optional
- (void)addAnimal:(id<AnimalProtocol>)animal;

- (void)removeAniaml:(id<AnimalProtocol>)animal;

- (void)show;

@end

