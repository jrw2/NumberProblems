//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            
static int multiple = 8;
static int divisor = 6;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    
    iterateCount(4);
    
    return YES;
}

void iterateCount(int number) {
    if (number > 0) {
        NSLog(@"Iterate %d", number);
        int m = multiplied(number);
        NSLog(@"Multiplied %d by %d to be %d", number, multiple, multiplied(number));
        NSLog(@"Divided %d by %d to be %f", m, divisor, divided(m));
        iterateCount(--number);
    }
}

int multiplied(int number) {
    return number * multiple;
}

float divided(int number) {
    return (float)number / (float)divisor;
}
@end
