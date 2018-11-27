//
//  KXQDHandle.m
//  KaiXinQianDai
//
//  Created by xiaoning on 2018/11/27.
//  Copyright © 2018年 xiaoning. All rights reserved.
//

#import "KXQDHandle.h"

@implementation KXQDHandle

+ (instancetype)shareHandle {
    static KXQDHandle *handle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        handle = [[KXQDHandle alloc] init];
    });
    return handle;
}

@end
