//
//  TDSCreateItemViewController.h
//  ToDoSample
//
//  Created by pollseed on 2014/05/30.
//  Copyright (c) 2014年 pollseed. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TDSCreateItemViewControllerDelegate;

@interface TDSCreateItemViewController : UITableViewController

@property (weak, nonatomic) id<TDSCreateItemViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;

@end

@protocol TDSCreateItemViewControllerDelegate <NSObject>

// [Save]ボタンが押された時に呼び出すメソッド
- (void)createItemViewControllerDidFinish:(TDSCreateItemViewController *)controller item:(NSString *)item;

// [Cancel]ボタンが押された時に呼び出すメソッド
- (void)createItemViewControllerDidCancel:(TDSCreateItemViewController * )controller;

@end