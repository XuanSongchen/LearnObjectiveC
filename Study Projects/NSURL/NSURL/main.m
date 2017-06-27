//
//  main.m
//  NSURL
//
//  Created by XuanSongchen on 4/13/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSURL
        //如何保存一个链接
        //http://www.hao123.com
        
        NSString * hao = @"http://www.hao123.com";
        
        NSURL * url = [NSURL URLWithString:hao];
        
        //url 可以直接加载到WebView 也可以发http的请求
        
        NSString * host = [url host];
        NSLog(@"host = %@",host);
        NSLog(@"port = %@",[url port]);
    }
    return 0;
}
