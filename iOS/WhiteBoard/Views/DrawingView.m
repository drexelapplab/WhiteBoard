//
//  DrawingView.m
//  WhiteBoard
//
//  Created by App Lab on 3/5/14.
//  Copyright (c) 2014 App Lab. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self)
    {
        _paths = [[NSMutableArray alloc] init];
        _pathColor = [UIColor blueColor];
        _pathWidth = 5;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    for(NSInteger i = 0; i < _paths.count; i++)
    {
        // Get a reference to the UIBezierPath object at index "i"
        ColoredBezierPath *path = [_paths objectAtIndex:i];
        
        // The setStroke method let's iOS know that all future stroke operations
        // should be in the given color.
        [path.color setStroke];
        
        // Draw the path in this DrawingView.
        [path stroke];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Get a reference to any one of the user's touches.
    UITouch *touch = [touches anyObject];
    
    // Conver the user's touch to an (x,y) coordinate.
    CGPoint point = [touch locationInView:self];
    
    // Create a new path for the current path.
    _currentPath = [[ColoredBezierPath alloc] initWithColor:_pathColor];
    [_currentPath setLineWidth:_pathWidth];
    
    [_paths addObject:_currentPath];
    
    // Move the current path to the point we extracted earlier.
    [_currentPath moveToPoint:point];
    
    // Let iOS know that we need to call the drawRect method again.
    // This will refresh the view so that the most up-to-date paths are drawn
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Get a reference to any one of the user's touches.
    UITouch *touch = [touches anyObject];
    
    // Conver the user's touch to an (x,y) coordinate.
    CGPoint point = [touch locationInView:self];
    
    // Add a straight line to the point we just extracted.
    [_currentPath addLineToPoint:point];
    
    //Refresh the drawn paths
    [self setNeedsDisplay];
}

- (void)clear
{
    [UIView animateWithDuration:.3 animations:^{
        // Make the view go invisible over the course of 0.3 seconds.
        [self setAlpha:0];
        
    } completion:^(BOOL finished) {
        // After the view has completed its animation,
        // Remove all paths from the _paths array, then refresh the view.
        [_paths removeAllObjects];
        [self setNeedsDisplay];
        // The last step is to make the view visible again!
        [self setAlpha:1];
    }];
}

@end












