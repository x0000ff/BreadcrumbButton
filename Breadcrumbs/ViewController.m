//
//  ViewController.m
//  Breadcrumbs
//
//  Created by x0000ff on 02/10/16.
//  Copyright © 2016 x0000ff. All rights reserved.
//

#import "ViewController.h"
#import "BreadcrumbButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BreadcrumbButton * breadcrumbButton;

@end

@implementation ViewController

- (IBAction)switchValueChanged:(UISwitch *)sender {
    self.breadcrumbButton.enabled = sender.isOn;
}

@end
