//
//  NFWeatherSendViewController.m
//  VazionWeather
//
//  Created by noko on 2013/10/28.
//  Copyright (c) 2013年 noko. All rights reserved.
//

#import "NFWeatherSendViewController.h"

@interface NFWeatherSendViewController ()

@end

@implementation NFWeatherSendViewController{
    @private
    Boolean isWithThunderbolt;
    Boolean isWithStrongwind;
    Boolean isWithHail;
    Boolean isWithFog;
    Boolean isPublic;
    Boolean isAnonymousPost;
    UIColor *selectedColor;
    UIColor *selectedTextColor;
    UIColor *whiteColor;
}

#pragma mark -
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    isWithThunderbolt = NO;
    isWithStrongwind = NO;
    isWithHail = NO;
    isWithFog = NO;
    isPublic = YES;
    isAnonymousPost = NO;
    selectedColor = [[UIColor alloc]initWithRed:0.0f green:0.478f blue:1.0f alpha:1.0f]; //iOS Button Color
    whiteColor = [UIColor whiteColor];
    selectedTextColor = whiteColor;
}

#pragma mark -
#pragma mark Button action method
- (IBAction)withThunderboltButtonPushed:(id)sender {
    isWithThunderbolt = !isWithThunderbolt;
    [self commonButtonChangeColor:_thunderboltButton
                       buttonFlag:isWithThunderbolt];
}

- (IBAction)withStrongwindButtonPushed:(id)sender {
    isWithStrongwind = !isWithStrongwind;
    
    [self commonButtonChangeColor:_strongwindButton
                       buttonFlag:isWithStrongwind];
}

- (IBAction)withHailButtonPushed:(id)sender {
    isWithHail = !isWithHail;
    [self commonButtonChangeColor:_hailButton
                       buttonFlag:isWithHail];
}

- (IBAction)withFogButtonPushed:(id)sender {
    isWithFog = !isWithFog;
    [self commonButtonChangeColor:_fogButton
                       buttonFlag:isWithFog];
}

- (IBAction)sendButtonPushed:(id)sender {
    //NSURL *url = [[NSURL alloc] initWithString:@"http://nokok.dip.jp/"];
}

- (IBAction)addPictureButtonPushed:(id)sender {
}

#pragma mark -
- (IBAction)publishSwitchValueChanged:(id)sender {
    isPublic = !isPublic;
    if(isPublic){
        [_sendButton setTitle:@"入力した情報をサーバーに送信" forState:UIControlStateNormal];
        _anonymousPostSwitch.enabled = YES;
    }else{
        [_sendButton setTitle:@"カレンダーにだけ保存" forState:UIControlStateNormal];
        _anonymousPostSwitch.enabled = NO;
    }
}

- (IBAction)anonymousPostValueChanged:(id)sender {
}

- (void)commonButtonChangeColor:(UIButton*)button
                     buttonFlag:(Boolean)enableButtonFlag{
    if(enableButtonFlag){
        button.backgroundColor = selectedColor;
        [button setTitleColor:selectedTextColor forState:UIControlStateNormal];
    }else{
        button.backgroundColor = whiteColor;
        [button setTitleColor:selectedColor forState:UIControlStateNormal];
    }
}
@end
