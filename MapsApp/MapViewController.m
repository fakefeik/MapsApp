//
//  MapViewController.m
//  MapsApp
//
//  Created by Admin on 18.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    manager = [[CLLocationManager alloc] init];
    manager.delegate = self;
    manager.desiredAccuracy = kCLLocationAccuracyBest;
    manager.distanceFilter = kCLDistanceFilterNone;
    [manager requestWhenInUseAuthorization];
    [manager startMonitoringSignificantLocationChanges];
    [manager startUpdatingLocation];
    mapView.showsUserLocation = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAddress {
    
}

- (void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    //currentLocation = locations;
    [mapView showAnnotations:locations animated:YES];
    NSLog(@"%@", locations);
    [manager stopUpdatingLocation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@synthesize addressField;
@synthesize goButton;
@synthesize mapView;
@synthesize currentLocation;

@end
