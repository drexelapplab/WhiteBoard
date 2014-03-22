//
//  ViewController.m
//  WhiteBoard
//
//  Created by App Lab on 3/5/14.
//  Copyright (c) 2014 App Lab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(motion == UIEventSubtypeMotionShake)
    {
        [_drawView clear];
    }
}

- (IBAction)changePathColor:(UIButton *)sender
{
    if(sender.tag == 1)
    {
        [_drawView setPathColor:[UIColor blueColor]];
    }
    else if(sender.tag == 2)
    {
        [_drawView setPathColor:[UIColor greenColor]];
    }
    else if(sender.tag == 3)
    {
        [_drawView setPathColor:[UIColor purpleColor]];
    }
    else if(sender.tag == 4)
    {
        [_drawView setPathColor:[UIColor redColor]];
    }
    else if(sender.tag == 5)
    {
        [_drawView setPathColor:[UIColor yellowColor]];	
    }
}
@end
