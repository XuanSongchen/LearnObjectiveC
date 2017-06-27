//
//  main.m
//  FileManage&Contents
//
//  Created by XuanSongchen on 4/12/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建nsfilemanage对象——单例
        NSFileManager * fileManager = [NSFileManager defaultManager];
       
        NSString * path = @"/tmp/test.txt";
        
        NSString * str = @"Hello World";
        NSError * error;
        //NSLog(@"result = %d",result);
        
        //2.判断文件是否存在
        //result = [fileManager fileExistsAtPath:path];
        if ([fileManager fileExistsAtPath:path]) {
            NSLog(@"文件存在");
        }
        else{
            NSLog(@"文件不存在");
            BOOL result = [str writeToFile:path atomically:YES encoding:NSASCIIStringEncoding error:&error];
        }
        
        //NSLog(@"判断文件是否存在 result = %d",result);
        
        //3.文件删除
        if ([fileManager removeItemAtPath:path error:&error]) {
            NSLog(@"文件删除成功");
        }
        else{
            NSLog(@"删除失败");
        }
    }
    return 0;
}
