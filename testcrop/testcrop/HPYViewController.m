//
//  HPYViewController.m
//  testcrop
//
//  Created by Haunshila on 05/05/13.
//  Copyright (c) 2013 HPY. All rights reserved.
//

#import "HPYViewController.h"
#import "HPYView.h"
@interface HPYViewController ()

@end

@implementation HPYViewController
@synthesize croppedView;
@synthesize  tileView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    croppedView.clipsToBounds =YES;
    /*
    UIView *content = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 180.0, 260.0)];
//    croppedView.alpha = 0.5;
    content.alpha = 0.5;

    content.backgroundColor = [UIColor redColor];
    
    
    [croppedView addSubview:content];
    */
    
    HPYView *vw = [[HPYView alloc] initWithFrame:CGRectMake(10, 40, 300, 300)];
    vw.cropRect = CGRectMake(50, 50, 150, 150);
    vw.clipsToBounds = YES;
    [self.view addSubview:vw];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
