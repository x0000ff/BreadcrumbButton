//
//  BreadcrumbButton.m
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

//###########################################
#import "BreadcrumbButton.h"

#import "UIImage+Tint.h"
#import "UIImage+Color.h"

//###########################################
@interface BreadcrumbButton()

/********************************************
 *
 * We cache these images becase we will set 
 * buttons images to nil for `disabled` state
 *
 *******************************************/
@property (strong, nonatomic) UIImage * cachedNormalImage;
@property (strong, nonatomic) UIImage * cachedHighlightedImage;
@property (strong, nonatomic) UIImage * cachedDisabledImage;

@end

//###########################################
@implementation BreadcrumbButton

//###########################################
- (id) init {

    self = [super init];

    if (self) {
        [self configure];
    }

    return self;
}

//###########################################
- (id) initWithCoder:(NSCoder *)aDecoder {

    self = [super initWithCoder:aDecoder];

    if (self) {
        [self configure];
    }

    return self;
}

//###########################################
- (id) initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];

    if (self) {
        [self configure];
    }

    return self;
}

//###########################################
- (void) awakeFromNib {

    [super awakeFromNib];
    [self configure];
}

//###########################################
// MARK: - UI
//###########################################
- (void) configure {

    self.adjustsImageWhenHighlighted = NO;
    self.adjustsImageWhenDisabled    = NO;

    [self configureTitle];
    [self configureImage];
    [self configureBackground];
    [self mirrorHorizontally];

    [self updateUI];
}

//###########################################
- (void) configureTitle {

    UIColor * normalColor      = [UIColor darkGrayColor];
    UIColor * highlightedColor = [UIColor darkGrayColor];
    UIColor * disabledColor    = [UIColor grayColor];

    [self setTitleColor:normalColor      forState:UIControlStateNormal];
    [self setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    [self setTitleColor:disabledColor    forState:UIControlStateDisabled];
}

//###########################################
- (void) configureBackground {

    UIColor * highlightedBackgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.3];
    UIImage * highlightedBackgroundImage = [UIImage imageWithColor:highlightedBackgroundColor];
    
    [self setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
}

//###########################################
- (void) configureImage {

    UIColor * normalColor      = [self titleColorForState:UIControlStateNormal];
    UIColor * highlightedColor = [self titleColorForState:UIControlStateHighlighted];
    UIColor * disabledColor    = [self titleColorForState:UIControlStateDisabled];

    UIImage * image = [self.class iconImage];
    self.cachedNormalImage      = [image tintedImageWithColor:normalColor];
    self.cachedHighlightedImage = [image tintedImageWithColor:highlightedColor];
    self.cachedDisabledImage    = [image tintedImageWithColor:disabledColor];
}

//###########################################
- (void) mirrorHorizontally {
    self.transform            = CGAffineTransformMakeScale(-1.0, 1.0);
    self.titleLabel.transform = CGAffineTransformMakeScale(-1.0, 1.0);
    self.imageView.transform  = CGAffineTransformMakeScale(-1.0, 1.0);
}

//###########################################
- (void) setEnabled:(BOOL)enabled {

    [super setEnabled:enabled];
    [self updateUI];
}

//###########################################
- (void) updateUI {

    if (self.enabled) {
        [self setImage:self.cachedNormalImage      forState:UIControlStateNormal];
        [self setImage:self.cachedHighlightedImage forState:UIControlStateHighlighted];
        [self setImage:self.cachedDisabledImage    forState:UIControlStateDisabled];
    } else {
        [self setImage:nil forState:UIControlStateNormal];
        [self setImage:nil forState:UIControlStateHighlighted];
        [self setImage:nil forState:UIControlStateDisabled];
    }
}

//###########################################
+ (UIImage *) iconImage {

    UIImage * iconImage = [[UIImage imageNamed:@"ic-arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return iconImage;
}

//###########################################
@end
//###########################################
