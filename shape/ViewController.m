//
//  ViewController.m
//  shape
//
//  Created by Thabib on 25/08/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//{
//    float x,y,width,height;
//}
@end

@implementation ViewController
@synthesize text1,text2,text3,text4;

- (void)viewDidLoad
{
    [super viewDidLoad];
   draw *drawobj=[[draw alloc]init];
    
    drawobj.x=[text1.text integerValue];
    drawobj.y=[text2.text intValue];
    drawobj.width=[text3.text intValue];
    drawobj.height=[text4.text intValue];
    
     self.text1.delegate = self;
    self.text2.delegate = self;
    self.text3.delegate = self;
    self.text4.delegate = self;
    
      }

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)draw:(id)sender {
    
    UIView *myview=[[UIView alloc]initWithFrame:CGRectMake(([text1.text intValue]), ([text2.text intValue]), ([text3.text intValue]), ([text4.text intValue]))];
    //CGContextSetLineWidth(context, 2.0);
    myview .backgroundColor = [UIColor blackColor];
    [self.view addSubview:myview];
}



@end
