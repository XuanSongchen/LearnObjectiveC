//
//  main.m
//  FileBasisOperate
//
//  Created by XuanSongchen on 4/13/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSError * error;
        
        //1.创建一个NSString对象（不能是空对象）。
        NSString * testString = @"宣松辰_14211092";
        
        //2.调用NSString对象的写文件的方法，将NSString对象写入到/tmp/test.txt。
        [testString writeToFile:@"/tmp/test.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        //3.使用NSFilemanger对象判断刚才写的文件是否存在。
        NSFileManager * filemanager = [NSFileManager defaultManager];
        if ([filemanager fileExistsAtPath:@"/tmp/test.txt"]) {
            NSLog(@"文件存在");
            
            //4.如果文件存在，使用NSFilemanger对象将文件的内容读取到NSData对象里。
            NSData * readData = [filemanager contentsAtPath:@"/tmp/test.txt"];
            NSLog(@"readData = %@",readData);
            
            //5.用读取的NSData对象创建NSString对象。
            NSString * str = [[NSString alloc]initWithData:readData encoding:NSUTF8StringEncoding];
            NSLog(@"str = %@",str);
        }
    }
    return 0;
}



