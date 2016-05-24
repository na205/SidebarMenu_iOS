//
//  MainViewController.m
//  
//
//  Created by Naveen on 24/05/16.
//
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController
@synthesize sidebarButton = sidebarButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"am in photoC %@",_photoFilename);
    self.photoImageView.image = [UIImage imageNamed:self.photoFilename];
    UIImage *shareBtnIcon = [UIImage imageNamed:@"menubar.png"];
    
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setFrame:CGRectMake(0, 0, shareBtnIcon.size.width, shareBtnIcon.size.height)];
    [shareButton setBackgroundImage:shareBtnIcon forState:UIControlStateNormal];
    [shareButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    sidebarButton = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    self.navigationItem.leftBarButtonItems = [[NSArray alloc] initWithObjects:sidebarButton, nil];
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController) {
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
