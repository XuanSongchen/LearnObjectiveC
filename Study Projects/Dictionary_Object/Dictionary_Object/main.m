//
//  main.m
//  Dictionary_Object
//
//  Created by XuanSongchen on 4/11/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //词典对象———字典对象
        //NSDictionary
        //1.通过键值对的存储，———NSArray 1000
        //  key——value
        
        //创建一个空的dictionary对象
        //NSDictionary * dict = [NSDictionary dictionary]; //用来清空别的dictionary对象
        
        //创建只有一个键值对对象的dictionary
        //NSDictionary * dic = [NSDictionary dictionaryWithObject:@"18" forKey:@"CityId"];
        
        //创建有多个键值对对象的dictionary
        //NSDictionary * dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"18",@"CityId",@"广州",@"CityName", nil];
        
        //创建可修改的dictionary
        NSMutableDictionary * mutableDict = [[NSMutableDictionary alloc]init];
        [mutableDict setObject:@"18" forKey:@"CityId"];
        
        //举例
        NSMutableDictionary * city1 = [[NSMutableDictionary alloc]init];
        [city1 setObject:@"18" forKey:@"CityId"];
        [city1 setObject:@"西安" forKey:@"CityName"];
        [city1 setObject:@"27" forKey:@"PovinceId"];
        [city1 setObject:@"1" forKey:@"CityOrder"];
        
        NSMutableDictionary * city2 = [[NSMutableDictionary alloc]init];
        [city2 setObject:@"52" forKey:@"CityId"];
        [city2 setObject:@"广州" forKey:@"CityName"];
        [city2 setObject:@"27" forKey:@"PovinceId"];
        [city2 setObject:@"1" forKey:@"CityOrder"];
        
        NSArray * cityArray = [NSArray arrayWithObjects:city1,city2,nil];
        
        NSDictionary * cityDict = [NSDictionary dictionaryWithObject:cityArray forKey:@"city"];
        
        NSLog(@"%@",cityDict);
    }
    return 0;
}
