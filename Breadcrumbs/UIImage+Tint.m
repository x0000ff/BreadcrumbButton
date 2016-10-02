//
//  UIImage+Tint.m
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

//###########################################
#import "UIImage+Tint.h"

//###########################################
@implementation UIImage (Tint)

//###########################################
// Mod of @horsejockey's method:
// http://stackoverflow.com/a/19413033
//###########################################
+ (UIImage *) tintedImageWithColor:(UIColor *)tintColor image:(UIImage *)image {

    UIGraphicsBeginImageContextWithOptions(image.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextTranslateCTM(context, 0, image.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);

    CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);

    // draw alpha-mask
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextDrawImage(context, rect, image.CGImage);

    // draw tint color, preserving alpha values of original image
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    [tintColor setFill];
    CGContextFillRect(context, rect);

    UIImage *coloredImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return coloredImage;
}

//###########################################
- (UIImage *) tintedImageWithColor:(UIColor *)tintColor {
    return [self.class tintedImageWithColor:tintColor image:self];
}

//###########################################
@end
//###########################################
