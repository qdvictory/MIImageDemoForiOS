//
//  ViewController.m
//  MIImageDemoForiOS
//
//  Created by Semaus Gao on 4/19/12.
//  Copyright (c) 2012 Chlova. All rights reserved.
//

#import "ViewController.h"
#import "MIImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    //get image with name
//    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
//    imageview.image = [MIImage imageWithNamed:@"test.png" secret:@"123"];
//    [self.view addSubview:imageview];
//    [imageview release];
    
    //or 
    
    //get image with path
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    imageview.image = [MIImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"test.png" ofType:nil] secret:@"123"];
    [self.view addSubview:imageview];
    [imageview release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
