//
//  main.mm
//  WeChatPlugin
//
//  Created by leonadev on 2018/8/28.
//  Copyright © 2018年 leonadev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+HookRevoke.h"
#import "NSObject+HookReceiveMsg.h"
#import "NSObject+HookUpgrade.h"

// 初始化入口，所有hook的方法都加在这里
static void __attribute__((constructor)) initialize(void) {
    NSLog(@"******** WeChatPlugin loaded ********");
    [NSObject hookRevoke];
    [NSObject hookRecevieMsg];
    [NSObject hookUpgrade];
}
