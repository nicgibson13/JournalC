//
//  EntryController.m
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"
#import "EntryDetailViewController.h"

@implementation EntryController

// Singleton
+ (instancetype)sharedInstance
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

-(void)updateEntry:(Entry *)entry title:(NSString *)title body:(NSString *)body
{
    entry.title = title;
    entry.body = body;
}

-(void)addEntry:(NSString *)title body:(NSString *)body;
{
    Entry *entry;
    entry.title = title;
    entry.body = body;
    [_entries addObject:entry];
}

-(void)deleteEntry:(Entry *)entry
{
    [_entries removeObject:entry];
}



@end
