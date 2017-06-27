//
//  main.m
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "News.h"
#import "NewsList.h"
#import "NewsDB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        News * new = [[News alloc]initWithTitle:@"苹果手机iPhone6发布会"
                                        summary:@"苹果今天发布了iPhone6"
                                         number:@"1000000"
                                       imageUrl:@"http://www.news.com/1001/jpg"];
        /**
         *  测试copy协议
         */
        News * n = [new copy];
        NSLog(@"n is: %@",n);
        
        /**
         *  测试coding协议
         */
        [NSKeyedArchiver archiveRootObject:n toFile:@"/tmp/n.txt"];
        News * readNews = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/tmp/n.txt"];
        NSLog(@"readNews: %@",readNews);
        
        /**
         *  测试newslist
         */
        NewsList * list = [[NewsList alloc]initWithFilePath:@"/tmp/list.txt"];
        
        /**
         *  添加news对象容器list中
         */
        //[list.newsArray addObject:readNews];
        [list addNews:readNews];
        
        //long int count = [list.newsArray count];
        long int count = [list count];
        NSLog(@"count = %ld",count);
        
        BOOL result = [list saveNewsArray];
        NSLog(@"save result = %d", result);
        
        result = [list readNewsArray];
        NSLog(@"read result = %d", result);

        NewsDB * db = [[NewsDB alloc]initWithFilePath:@"/tmp/db.txt"];
        //[db.newsList addNews:readNews];
        [db addNews:readNews];
        
        [db saveNewsArray];
        [db readNewsArray];
    }
    return 0;
}
