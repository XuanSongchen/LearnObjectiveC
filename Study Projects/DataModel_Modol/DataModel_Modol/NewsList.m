//
//  NewsList.m
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "NewsList.h"
#import "News.h"

#define NEWSLIST_NEWSARRAY (@"newsarray")
#define NEWSLIST_FILEPATH  (@"filepath")

@implementation NewsList

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.newsArray = [[NSMutableArray alloc]init];
    if (!self.newsArray) {
        self = nil;
        return nil;
    }
    return self;
}
- (id)initWithFilePath:(NSString *)path {
    if(!path) {
        return nil;
    }
    self = [super init];
    if (!self) {
        return nil;
    }
    self.newsArray = [[NSMutableArray alloc]init];
    if (!self.newsArray) {
        self = nil;
        return nil;
    }
    self.filePath = [[NSString alloc]initWithFormat:@"%@",path];
    if (!self.filePath) {
        self = nil;
        return nil;
    }
    return self;
}

- (NSString *)description {
    NSMutableString * tmp = [[NSMutableString alloc]init];
    for (News * new in self.newsArray) {
        [tmp appendFormat:@"%@",new];
    }
    return tmp;
}

#pragma mark
#pragma mark NSCopying methods

- (id)copyWithZone:(nullable NSZone *)zone {
    NewsList * list = [[NewsList allocWithZone:zone]initWithFilePath:self.filePath];
    return list;
}

#pragma mark
#pragma mark NSCoding methods

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.newsArray forKey:NEWSLIST_NEWSARRAY];
    [aCoder encodeObject:self.filePath forKey:NEWSLIST_FILEPATH];

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if(!self) {
        return nil;
    }
    if ([aDecoder containsValueForKey:NEWSLIST_NEWSARRAY]) {
        self.newsArray = [aDecoder decodeObjectForKey:NEWSLIST_NEWSARRAY];
    }
    if ([aDecoder containsValueForKey:NEWSLIST_FILEPATH]) {
        self.filePath = [aDecoder decodeObjectForKey:NEWSLIST_FILEPATH];
    }
    return self;
}

- (void)addNews:(News *)ohterNews {
    [self.newsArray addObject:ohterNews];
}

- (NSInteger)count {
    return [self.newsArray count];
}

- (BOOL)saveNewsArray {
    return [NSKeyedArchiver archiveRootObject:self.newsArray toFile:self.filePath];
}
-(BOOL)readNewsArray {
    self.newsArray = nil;
    self.newsArray = [NSKeyedUnarchiver unarchiveObjectWithFile:self.filePath];
    if(self.newsArray) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
