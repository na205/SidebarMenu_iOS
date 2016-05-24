//
//  MainViewController.m
//  
//
//  Created by Naveen on 24/05/16.
//
//

#import "MapViewController.h"

@interface MapViewController () 

@end

@implementation MapViewController
@synthesize sidebarButton = sidebarButton;
@synthesize mapView = mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView.delegate = self;
    
    SWRevealViewController *revealViewController = self.revealViewController;
    UIImage *shareBtnIcon = [UIImage imageNamed:@"menubar.png"];
    
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setFrame:CGRectMake(0, 0, shareBtnIcon.size.width, shareBtnIcon.size.height)];
    [shareButton setBackgroundImage:shareBtnIcon forState:UIControlStateNormal];
    [shareButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    sidebarButton = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    self.navigationItem.leftBarButtonItems = [[NSArray alloc] initWithObjects:sidebarButton, nil];
    if (revealViewController) {
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.mapView addAnnotation:point];
}

@end
