//
//  News.h
//  DataModel_Modol
//
//  Created by XuanSongchen on 4/15/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject <NSCopying, NSCoding>

@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * number;
@property (nonatomic, strong) NSString * imageUrl;

-(id)init;

-(id)initWithTitle:(NSString *)titleValue
           summary:(NSString *)summaryValue
            number:(NSString *)numberValue
          imageUrl:(NSString *)imageUrlValue;


@end
