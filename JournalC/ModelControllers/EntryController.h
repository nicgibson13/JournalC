//
//  EntryController.h
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+(EntryController *)sharedInstance;

@property (nonatomic, strong) NSMutableArray *entries;

-(void)updateEntry:(Entry *)entry title:(NSString *)title body:(NSString *)body;

-(void)addEntry:(NSString *)title body:(NSString *)body;

-(void)deleteEntry:(Entry *)entry;

@end

NS_ASSUME_NONNULL_END
