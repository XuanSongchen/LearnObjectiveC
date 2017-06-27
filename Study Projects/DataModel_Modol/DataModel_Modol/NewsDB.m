//
//  NewsDB.m
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "NewsDB.h"
#import "NewsList.h"

@implementation NewsDB

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.newsList = [[NewsList alloc]init];
    if (!self.newsList) {
        self = nil;
        return nil;
    }
    return self;
}

- (id)initWithFilePath:(NSString *)filePathValue {
    if (!filePathValue) {
        return nil;
    }
    self = [super init];
    if (!self) {
        return nil;
    }
 
    self.filePath = [[NSString alloc]initWithFormat:@"%@", filePathValue];
    if(!self.filePath) {
        self = nil;
        return nil;
    }
    
    self.newsList = [[NewsList alloc]initWithFilePath:self.filePath];
    if (!self.newsList) {
        self = nil;
        return nil;
    }
    return self;
}

- (void)addNews:(News *)anyNew {
    [self.newsList addNews:anyNew];
}

- (BOOL)saveNewsArray {
    return [self.newsList saveNewsArray];
}
- (BOOL)readNewsArray {
    return [self.newsList readNewsArray];
}

@end
