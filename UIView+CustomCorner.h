//
//  UIView+CustomCorner.h
//  EasonLex
//
//  Created by Eason Lin on 2015/11/20.
//  Copyright © 2015年 Ufro Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CustomCorner)
- (void)roundTopCornerWithRadius:(CGFloat)radius;
- (void)roundBottomCornerWithRadius:(CGFloat)radius;
- (void)roundAllCornerWithRadius:(CGFloat)radius;
@end
