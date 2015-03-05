//
//  deatilViewController.m
//  rotation_samlpe_poc
//
//  Created by Hubino-Mac on 12/02/15.
//  Copyright (c) 2015 Hubino-Mac. All rights reserved.
//

#import "deatilViewController.h"

@interface deatilViewController ()

@end

@implementation deatilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate
{
    return NO;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)supportedorientationinterface
{
    return UIInterfaceOrientationMaskPortrait;
}


- (IBAction)back:(id)sender {
    deatilViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:NULL]
                                      instantiateViewControllerWithIdentifier:@"viewtemplate"];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self presentModalViewController:vc animated:NO];
}
@end
