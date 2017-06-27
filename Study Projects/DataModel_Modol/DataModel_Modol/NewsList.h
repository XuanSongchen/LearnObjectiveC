//
//  NewsList.h
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class News;

@interface NewsList : NSObject <NSCopying, NSCoding>

@property (nonatomic, strong) NSMutableArray * newsArray;
@property (nonatomic, strong) NSString * filePath;


- (id)init;
- (id)initWithFilePath:(NSString *)path;

/**
 *  封装array的方法
 */
- (void)addNews:(News *)ohterNews;
- (NSInteger)count;

- (BOOL)saveNewsArray;
- (BOOL)readNewsArray;

@end
