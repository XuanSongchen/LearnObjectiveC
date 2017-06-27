//
//  main.m
//  Code&Decode
//
//  Created by XuanSongchen on 4/14/16.
//  Copyright © 2016 Xuan Songchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * xsc = [[Person alloc]init];
        
        BOOL result = [NSKeyedArchiver archiveRootObject:xsc toFile:@"/tmp/xsc.txt"];
        NSLog(@"\nresult = %d",result);
        
        Person * reservedPerson = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/tmp/xsc.txt"];
        NSLog(@"\nreservedPerson: %@",reservedPerson);
        
    }
    return 0;
}
