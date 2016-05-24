//
//  MainViewController.h
//  
//
//  Created by Naveen on 24/05/16.
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "SWRevealViewController.h"

@interface MapViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
