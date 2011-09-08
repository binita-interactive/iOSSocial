//
//  InstaBetaViewController.m
//  InstaBeta
//
//  Created by Christopher White on 7/26/11.
//  Copyright 2011 Mad Races, Inc. All rights reserved.
//

#import "InstaBetaViewController.h"
#import "iOSSService.h"

@implementation InstaBetaViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)servicesButtonPressed:(id)sender 
{
    iOSSServicesViewController *iossServicesViewController = [[iOSSServicesViewController alloc] init];
    iossServicesViewController.serviceControllerDelegate = self;
    [self presentModalViewController:iossServicesViewController animated:YES];
}

-(void)servicesViewController:(iOSSServicesViewController*)servicesController 
             didSelectService:(id<iOSSServiceProtocol>)service
{
    /*
    id<iOSSocialLocalUserProtocol> localUser = service.localUser;
    
    if ([service isConnected]) {
        [localUser logout];
        
        //cwnote: here we need to remove the service for our user from the server
        
    } else {
        [localUser authenticateFromViewController:self 
                            withCompletionHandler:^(NSError *error){
                                if (!error) {
                                    [servicesController refreshUI];
                                    //cwnote: here we need to save this service for the user on our server
                                    [[PSLocalUser localUser] updateUserWithService:service andCompletionHandler:^(NSError *error) {
                                        NSLog(@"doh!");
                                    }];
                                }}];
    }
*/
}

-(void)servicesViewControllerDidSelectDoneButton:(iOSSServicesViewController *)servicesController
{
    [self dismissModalViewControllerAnimated:YES];
}

@end