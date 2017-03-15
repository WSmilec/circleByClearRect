//
//  TestView.m
//  circleByClearRect
//
//  Created by WangS on 17/3/15.
//  Copyright © 2017年 WangS. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (void)drawRect:(CGRect)rect{
   
    //方法1
    CGContextRef content = UIGraphicsGetCurrentContext();
    [[[UIColor blackColor] colorWithAlphaComponent:0.5] setFill];
    CGMutablePathRef screenPath = CGPathCreateMutable();
    CGPathAddRect(screenPath, NULL, self.bounds);
    
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddArc(circlePath, NULL, self.frame.size.width/2,  self.frame.size.height/2, 150, 0, 2*M_PI, NO);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddPath(path, NULL, screenPath);
    CGPathAddPath(path, NULL, circlePath);
    
    CGContextAddPath(content, path);
    CGContextDrawPath(content, kCGPathEOFill);
    
    CGPathRelease(screenPath);
    CGPathRelease(circlePath);
    CGPathRelease(path);
    /*
    //方法2
    UIBezierPath *bezierScreen =   [UIBezierPath bezierPathWithRect:self.frame];
    [[[UIColor blackColor] colorWithAlphaComponent:0.5] setFill];
    [bezierScreen fill];

    UIBezierPath *bezierCircle =   [UIBezierPath bezierPathWithArcCenter:self.center radius:150 startAngle:0 endAngle:2*M_PI clockwise:NO];

    [bezierScreen appendPath:bezierCircle];

    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = bezierScreen.CGPath;
    self.layer.mask = maskLayer;
    */
    
}

@end
