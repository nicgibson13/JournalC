//
//  EntryTableViewController.m
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import "EntryTableViewController.h"
#import "EntryController.h"
#import "Entry.h"
#import "EntryDetailViewController.h"

@interface EntryTableViewController ()

@end

@implementation EntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
    cell.textLabel.text = entry.body;
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
        [EntryController.sharedInstance deleteEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual: @"toUpdateEntry"]) {
        NSIndexPath *selectedIndex  = self.tableView.indexPathForSelectedRow;
        EntryDetailViewController * destinationVC = [segue destinationViewController];
        Entry *entry = EntryController.sharedInstance.entries[selectedIndex.row];
                        destinationVC.entry = entry;
    }
}

@end
