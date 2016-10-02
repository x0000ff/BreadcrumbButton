//
//  ViewController.m
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

//###########################################
#import "ViewController.h"
#import "BreadcrumbButton.h"

//###########################################
@interface ViewController ()

@property (weak, nonatomic) IBOutlet BreadcrumbButton * countryButton;
@property (weak, nonatomic) IBOutlet BreadcrumbButton * cityButton;
@property (weak, nonatomic) IBOutlet BreadcrumbButton * districtButton;

@property (weak, nonatomic) IBOutlet UISwitch * countrySwitch;
@property (weak, nonatomic) IBOutlet UISwitch * citySwitch;
@property (weak, nonatomic) IBOutlet UISwitch * districtSwitch;

@end

//###########################################
@implementation ViewController

//###########################################
- (IBAction)switchValueChanged:(UISwitch *)sender {

    BreadcrumbButton * button = [self breadcrubButtonForSwitch:sender];
    button.enabled = sender.isOn;
}

//###########################################
- (BreadcrumbButton *) breadcrubButtonForSwitch:(UISwitch *)switchControl {

    if (switchControl == self.countrySwitch) {
        return self.countryButton;
    }

    if (switchControl == self.citySwitch) {
        return self.cityButton;
    }

    if (switchControl == self.districtSwitch) {
        return self.districtButton;
    }

    return nil;
}

//###########################################
@end
//###########################################
