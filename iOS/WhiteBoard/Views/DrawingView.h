//
//  DrawingView.h
//  WhiteBoard
//
//  Created by App Lab on 3/5/14.
//  Copyright (c) 2014 App Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColoredBezierPath.h"

@interface DrawingView : UIView

// An array to hold all paths that should be drawn to the view.
@property (strong, nonatomic) NSMutableArray *paths;

@property (nonatomic) NSInteger pathWidth;

// The current path that is being drawn
@property (strong, nonatomic) ColoredBezierPath *currentPath;

// The color that the current path should be.
@property (strong, nonatomic) UIColor *pathColor;

// Remove all paths from the _paths array and clear the view.
- (void)clear;

@end
