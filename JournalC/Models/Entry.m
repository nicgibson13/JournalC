//
//  Entry.m
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithName:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
        _timestamp = [NSDate new];
    }
    return self;
}

@end
