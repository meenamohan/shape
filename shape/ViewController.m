//
//  ViewController.m
//  shape
//
//  Created by Thabib on 25/08/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    NSMutableArray *arrayobj;
    draw *drawobj;


}
@end

@implementation ViewController
@synthesize text1,text2,text3,text4;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     self.text1.delegate = self;
    self.text2.delegate = self;
    self.text3.delegate = self;
    self.text4.delegate = self;
    arrayobj=[[NSMutableArray alloc]init];

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
    
    UIView *myview;

        for(drawobj in arrayobj)
       {
           myview=[[UIView alloc]initWithFrame:CGRectMake((drawobj.x), (drawobj.y), (drawobj.width), (drawobj.height))];
           
           myview .backgroundColor = [UIColor redColor];

           NSLog(@"print%@",drawobj);
           [self.view addSubview:myview];

       }
    
 
    
}

- (IBAction)save:(id)sender {
    drawobj=[[draw alloc]init];

    drawobj.x=[text1.text intValue];
    drawobj.y=[text2.text intValue];
    drawobj.width=[text3.text intValue];
    drawobj.height=[text4.text intValue];
    
        [arrayobj addObject:drawobj];
    NSLog(@"print%@",arrayobj);
    

//    for(id item in arrayobj)
//    {
//       // NSLog(@"Found an Item: %@",item);
//        item =drawobj.x;
//        item=drawobj.y;
//        item=drawobj.width;
//        item=drawobj.height;
//    }
    
}



@end
