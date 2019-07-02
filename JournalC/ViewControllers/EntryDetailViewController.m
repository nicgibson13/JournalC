//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Nic Gibson on 7/1/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "Entry.h"
#import "EntryController.h"


@interface EntryDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith:_entry];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    // Declare the type, point to it in memory, name the variable, assign its value
    NSString *title = _entryTitleTextField.text;
    NSString *body = _entryTextView.text;
    if (_entry != nil) {
        [EntryController.sharedInstance updateEntry:_entry title: title body:body];
    } else {
        [EntryController.sharedInstance addEntry:title body:body];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender {
    _entryTextView.text = @"";
}

-(void)updateWith:(Entry *)entry {
    {
        if ((entry = entry)) {
            self.entryTitleTextField.text = entry.title;
            self.entryTextView.text = entry.title;
        }
        
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_entryTitleTextField resignFirstResponder];
    return true;
}
@end
