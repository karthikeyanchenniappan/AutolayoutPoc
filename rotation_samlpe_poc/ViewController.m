//
//  ViewController.m
//  rotation_samlpe_poc
//
//  Created by Hubino-Mac on 12/02/15.
//  Copyright (c) 2015 Hubino-Mac. All rights reserved.
//

#import "ViewController.h"
#import "deatilViewController.h"
@interface ViewController ()

- (IBAction)click:(id)sender;
- (IBAction)seting:(id)sender;

@end

@implementation ViewController
/**
 * Subramai Super Hero is Here Initializes and  */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
/**
 * Initializes and returns a newly a
 */
-(BOOL)shouldAutorotate
{
return YES;
}

/**
 * Everything is under control now.
  */

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown; // or however you want to rotate
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 * Initializes and returns a newly  */
- (IBAction)click:(id)sender {
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:NULL]
                                      instantiateViewControllerWithIdentifier:@"detailtemplate"];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self presentModalViewController:vc animated:NO];
    
}
/**
 * Initializes  */
- (IBAction)seting:(id)sender {
    [self openSettings];
}
/**
 * Initializes and returns a newly allocated view object with the specified frame rectangle.
 */
- (void)openSettings
{
    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url];
    }
}

/**
 * New method added to Subramani super man
 */
-(void)closeSettings
{
}

@end
