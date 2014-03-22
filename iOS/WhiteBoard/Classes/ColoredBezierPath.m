//
//  ColoredBezierPath.m
//  WhiteBoard
//
//  Created by App Lab on 3/5/14.
//  Copyright (c) 2014 App Lab. All rights reserved.
//

#import "ColoredBezierPath.h"

@implementation ColoredBezierPath

- (id)initWithColor:(UIColor *)color
{
    self = [super init];
    
    if(self)
    {
        _color = color;
    }
    
    return self;
}

@end
