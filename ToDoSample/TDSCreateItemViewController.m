//
//  TDSCreateItemViewController.m
//  ToDoSample
//
//  Created by pollseed on 2014/05/30.
//  Copyright (c) 2014年 pollseed. All rights reserved.
//

#import "TDSCreateItemViewController.h"

@interface TDSCreateItemViewController ()

@end

@implementation TDSCreateItemViewController

- (IBAction)textField:(UITextField *)sender {
}

- (IBAction)saveButtonTapped:(id)sender {
    
    // createItemViewControllerDidFinish:を呼び出す
    // respondsToSelectorで指定したメソッドを持っているか調べる
    if ([self.delegate respondsToSelector:@selector(createItemViewControllerDidFinish:item:)]) {
        
        // 入力文字列を取得
        NSString *item = self.textField.text;
        [self.delegate createItemViewControllerDidFinish:self item:item];
    }
}

- (IBAction)cancelButtonTapped:(id)sender {
    
    // createItemViewControllerDidCancel:メソッドを呼び出す
    if ([self.delegate respondsToSelector:@selector(createItemViewControllerDidCancel:)]) {
        [self.delegate createItemViewControllerDidCancel:self];
    }
}
@end
