//
//  MapViewController.h
//  MapsApp
//
//  Created by Admin on 18.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate> {
    IBOutlet UITextField *addressField;
    IBOutlet UIButton *goButton;
    IBOutlet MKMapView *mapView;
    CLLocationManager* manager;
    NSArray* currentLocation;
}

@property (nonatomic, retain) IBOutlet UITextField* addressField;
@property (nonatomic, retain) IBOutlet UIButton* goButton;
@property (nonatomic, retain) IBOutlet MKMapView* mapView;
@property (retain) NSArray* currentLocation;

@end
