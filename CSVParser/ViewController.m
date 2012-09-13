//
//  ViewController.m
//  CSVParser
//
//  Created by Ha Minh Vuong on 8/31/12.
//  Copyright (c) 2012 Ha Minh Vuong. All rights reserved.
//

#import "ViewController.h"
#import "CSVParser.h"

@interface ViewController ()
@property (strong) NSArray *array;
@end

@implementation ViewController

@synthesize array = _array;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *file = [[NSBundle mainBundle] pathForResource:@"USPresident Wikipedia" ofType:@"csv"];
    
    // For Testing
    
//    [CSVParser parseCSVIntoArrayOfDictionariesFromFile:file
//                          withSeparatedCharacterString:@","
//                                  quoteCharacterString:nil
//                                             withBlock:^(NSArray *array) {
//                                                 self.array = array;
////                                                 NSLog(@"%@", self.array);
//                                             }];
    
    [CSVParser parseCSVIntoArrayOfArraysFromFile:file
                    withSeparatedCharacterString:@","
                            quoteCharacterString:nil
                                       withBlock:^(NSArray *array) {
                                           self.array = array;
//                                           NSLog(@"%@", self.array);
                                       }];
}

- (IBAction)showArray:(id)sender
{
    NSLog(@"%@", self.array);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
