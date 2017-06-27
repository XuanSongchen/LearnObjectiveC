//
//  News.m
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import "News.h"

#define NEWS_TITLE    (@"title")
#define NEWS_SUMMARY  (@"summary")
#define NEWS_NUMBER   (@"number")
#define NEWS_IMAGEURL (@"imageUrl")

@implementation News

-(id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.title = [[NSString alloc]initWithFormat:@"网易新闻"];
    if (!self.title) {
        self = nil;
        return nil;
    }
    self.summary= [[NSString alloc]initWithFormat:@"网易新闻简要"];
    if (!self.summary) {
        self = nil;
        return nil;
    }
    self.number = [[NSString alloc]initWithFormat:@"1000"];
    if (!self.number) {
        self = nil;
        return nil;
    }
    self.imageUrl = [[NSString alloc]initWithFormat:@"http://127.0.0.1/1.jpg"];
    if (!self.imageUrl) {
        self = nil;
        return nil;
    }
    return self;
}

-(id)initWithTitle:(NSString *)titleValue
           summary:(NSString *)summaryValue
            number:(NSString *)numberValue
          imageUrl:(NSString *)imageUrlValue {
    if(!titleValue || !summaryValue || !numberValue || !imageUrlValue) {
        return nil;
    }
    self = [super init];
    if (!self) {
        return nil;
    }
    self.title = [[NSString alloc]initWithFormat:@"%@", titleValue];
    if (!self.title) {
        self = nil;
        return nil;
    }
    self.summary= [[NSString alloc]initWithFormat:@"%@", summaryValue];
    if (!self.summary) {
        self = nil;
        return nil;
    }
    self.number = [[NSString alloc]initWithFormat:@"%@", numberValue];
    if (!self.number) {
        self = nil;
        return nil;
    }
    self.imageUrl = [[NSString alloc]initWithFormat:@"%@", imageUrlValue];
    if (!self.imageUrl) {
        self = nil;
        return nil;
    }
    return self;

}

#pragma mark
#pragma mark NSCopying methods

- (id)copyWithZone:(nullable NSZone *)zone {
    News * copyNews = [[News allocWithZone:zone]initWithTitle:self.title
                                                      summary:self.summary
                                                       number:self.number
                                                     imageUrl:self.imageUrl];
    return copyNews;
}

#pragma mark
#pragma mark NSCoding methods

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.title forKey:NEWS_TITLE];
    [aCoder encodeObject:self.summary forKey:NEWS_SUMMARY];
    [aCoder encodeObject:self.number forKey:NEWS_NUMBER];
    [aCoder encodeObject:self.imageUrl forKey:NEWS_IMAGEURL];
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if(!self) {
        return nil;
    }
    if ([aDecoder containsValueForKey:NEWS_TITLE]) {
        self.title = [aDecoder decodeObjectForKey:NEWS_TITLE];
    }
    if ([aDecoder containsValueForKey:NEWS_SUMMARY]) {
        self.summary = [aDecoder decodeObjectForKey:NEWS_SUMMARY];
    }
    if ([aDecoder containsValueForKey:NEWS_NUMBER]) {
        self.number = [aDecoder decodeObjectForKey:NEWS_NUMBER];
    }
    if ([aDecoder containsValueForKey:NEWS_IMAGEURL]) {
        self.imageUrl = [aDecoder decodeObjectForKey:NEWS_IMAGEURL];
    }
    return self;
}

-(NSString *)description {
    NSMutableString * tmp = [[NSMutableString alloc]init];
    [tmp appendFormat:@"\n新闻标题:%@", self.title];
    [tmp appendFormat:@"\n新闻简介:%@", self.summary];
    [tmp appendFormat:@"\n新闻阅读:%@", self.number];
    [tmp appendFormat:@"\n新闻图片:%@", self.imageUrl];
    return tmp;
}

@end













