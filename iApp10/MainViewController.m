//
//  MainViewController.m
//  
//
//  Created by Naveen on 24/05/16.
//
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize sidebarButton = sidebarButton;

- (void)viewDidLoad {
    [super viewDidLoad];
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

@end
