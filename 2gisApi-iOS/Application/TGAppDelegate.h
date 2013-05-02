//
//  TGAppDelegate.h
//  2gisApi-iOS
//
//  Created by Developer on 21.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface TGAppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

//Add a location manager property to this app delegate
@property (strong, nonatomic) CLLocationManager *locationManager;

@end
