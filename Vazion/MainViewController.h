//
//  ViewController.h
//  hoge
//
//  Created by noko on 2013/08/21.
//  Copyright (c) 2013年 noko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XML.h"
#import "GPS.h"

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *maxTemperature;
@property (weak, nonatomic) IBOutlet UILabel *minTemperature;
@property IBOutlet UIButton *placementButton;
- (void)setButtonText:(NSString*)text;
+ (id)sharedInstance;

@end
