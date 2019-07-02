//
//  EntryDetailViewController.h
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong) Entry *entry;

@end

NS_ASSUME_NONNULL_END
