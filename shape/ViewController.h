//
//  ViewController.h
//  shape
//
//  Created by Thabib on 25/08/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "draw.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UITextField *text4;
//@property (nonatomic,strong) draw *drawobj;
    

- (IBAction)draw:(id)sender;

@end
