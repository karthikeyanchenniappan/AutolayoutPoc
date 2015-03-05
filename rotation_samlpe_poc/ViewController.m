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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)shouldAutorotate
{
return YES;
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown; // or however you want to rotate
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

- (IBAction)seting:(id)sender {
    [self openSettings];
}

- (void)openSettings
{
    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url];
    }
}


@end
