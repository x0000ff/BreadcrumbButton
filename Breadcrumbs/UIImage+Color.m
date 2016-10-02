//
//  UIImage+Color.m
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

//###########################################
#import "UIImage+Color.h"

//###########################################
@implementation UIImage (Color)

//###########################################
+ (UIImage *) imageWithColor:(UIColor *)color {

    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);

    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

//###########################################
@end
//###########################################
