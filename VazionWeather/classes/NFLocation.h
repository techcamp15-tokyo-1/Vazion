//
//  NFGPS.h
//  VazionWeather
//
//  Created by noko on 2013/10/06.
//  Copyright (c) 2013年 noko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLGeocoder.h>
#import <CoreLocation/CLPlacemark.h>

@protocol NFWeatherInfomationDelegate <NSObject>
@optional
- (void) gpsInfomationUpdating;
- (void) gpsInfomationUpdated;
- (void) addressUpdated:(NSString*)address;
@end

@interface NFLocation : NSObject<CLLocationManagerDelegate,NFWeatherInfomationDelegate>

@property (nonatomic, readonly)NSString *myAddress;
@property (nonatomic, readonly)Boolean isGPSEnabled;
@property id<NFWeatherInfomationDelegate> delegate;

-(id)init;
-(void)updateMyGPSInfomation;
+(NFLocation*)sharedManager;

@end