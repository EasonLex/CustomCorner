//
//  UIView+CustomCorner.m
//  EasonLex
//
//  Created by Eason Lin on 2015/11/20.
//

#import "UIView+CustomCorner.h"

@implementation UIView (CustomCorner)
- (void)roundTopCornerWithRadius:(CGFloat)radius
{
    CGRect bounds = self.bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                   byRoundingCorners:(UIRectCornerTopLeft|UIRectCornerTopRight)
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    [self setRoundWithPath:maskPath];
}

- (void)roundBottomCornerWithRadius:(CGFloat)radius
{
    CGRect bounds = self.bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                   byRoundingCorners:(UIRectCornerBottomLeft|UIRectCornerBottomRight)
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    [self setRoundWithPath:maskPath];
}

- (void)roundAllCornerWithRadius:(CGFloat)radius
{
    CGRect bounds = self.bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                   byRoundingCorners:(UIRectCornerTopLeft|UIRectCornerTopRight|UIRectCornerBottomLeft|UIRectCornerBottomRight)
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    [self setRoundWithPath:maskPath];
}

- (void)setRoundWithPath:(UIBezierPath *)path
{
    CGRect bounds = self.bounds;
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = bounds;
    maskLayer.path = path.CGPath;
    
    self.layer.mask = maskLayer;
    CAShapeLayer*   frameLayer = [CAShapeLayer layer];
    frameLayer.frame = bounds;
    frameLayer.path = path.CGPath;
    frameLayer.strokeColor = self.backgroundColor.CGColor;
    frameLayer.fillColor = nil;
    
    [self.layer addSublayer:frameLayer];

}
@end
