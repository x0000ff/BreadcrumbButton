//
//  UIImage+Tint.h
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

//###########################################
#import <UIKit/UIKit.h>

//###########################################
@interface UIImage (Tint)

//###########################################
+ (UIImage *) tintedImageWithColor:(UIColor *)tintColor image:(UIImage *)image;
- (UIImage *) tintedImageWithColor:(UIColor *)tintColor;

//###########################################
@end
//###########################################
