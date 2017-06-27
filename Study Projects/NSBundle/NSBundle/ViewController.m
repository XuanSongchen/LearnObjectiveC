//
//  ViewController.m
//  NSBundle
//
//  Created by XuanSongchen on 4/13/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSBundle 中文翻译：束————实际上它是一个路径或者说文件夹
    //获取图片在工程文件下的路径
    //1.创建一个NSBundle的对象
    NSBundle * bundle = [NSBundle mainBundle];
    //2.获取图片在工程里的路径
    NSString * photoPath = [bundle pathForResource:@"白云山日出_背景" ofType:@"JPG"];
    NSLog(@"photoPath = %@",photoPath);
    
    NSError * error;
    
    NSFileManager * fileManager = [NSFileManager defaultManager];
    if([fileManager copyItemAtPath:photoPath toPath:@"/tmp/photo.JPG" error:&error])
    {
        NSLog(@"图片拷贝成功");
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
