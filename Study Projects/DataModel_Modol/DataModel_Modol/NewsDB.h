//
//  NewsDB.h
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class News;
@class NewsList;

@interface NewsDB : NSObject

@property (nonatomic, strong) NewsList * newsList;
@property (nonatomic, strong) NSString * filePath;

- (id)init;
- (id)initWithFilePath:(NSString *)filePathValue;

- (void)addNews:(News *)anyNew;

- (BOOL)saveNewsArray;
- (BOOL)readNewsArray;

@end
