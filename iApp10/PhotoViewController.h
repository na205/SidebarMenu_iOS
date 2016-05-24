//
//  MainViewController.h
//  
//
//  Created by Naveen on 24/05/16.
//
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface PhotoViewController : UIViewController
@property (strong, nonatomic) UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;
@end
