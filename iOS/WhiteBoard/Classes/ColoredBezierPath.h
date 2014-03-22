//
//  ColoredBezierPath.h
//  WhiteBoard
//
//  Created by App Lab on 3/5/14.
//  Copyright (c) 2014 App Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColoredBezierPath : UIBezierPath

@property (strong, nonatomic) UIColor *color;

- (id)initWithColor:(UIColor *)color;

@end
