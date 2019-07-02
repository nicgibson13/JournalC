//
//  Entry.h
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSDate *timestamp;

-(instancetype)initWithName: (NSString *)title
                       body: (NSString *)body;
                        
@end

NS_ASSUME_NONNULL_END
