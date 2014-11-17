//
//  ViewController.h
//  MapsApp
//
//  Created by Admin on 17.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

IBOutlet MKMapView* mapView;

@interface ViewController : UIViewController<MKMapViewDelegate> {
    MKMapView* mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView* mapView;

@end

