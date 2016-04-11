//
//  UIView+CustomCorner.h
//  EasonLex
//
//  Created by Eason Lin on 2015/11/20.
//

#import <UIKit/UIKit.h>

@interface UIView (CustomCorner)
- (void)roundTopCornerWithRadius:(CGFloat)radius;
- (void)roundBottomCornerWithRadius:(CGFloat)radius;
- (void)roundAllCornerWithRadius:(CGFloat)radius;
@end
