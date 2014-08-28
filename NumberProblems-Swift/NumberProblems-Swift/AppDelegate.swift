//
//  AppDelegate.swift
//  NumberProblems-Swift
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    let multiple = 8
    let divisor = 6
    
    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {

        // Insert code here...
        
        iterateCount(4)
        
        return true
    }

    func iterateCount(number: Int) {
        if (number > 0) {
            NSLog("Iterate \(number)")
            var m = multiplied(number)
            NSLog("Multiplied \(number) by \(multiple) to be \(multiplied(number))")
            NSLog("Divided \(m) by \(divisor) to be \(divided(m))")
            iterateCount(number-1)
        }
    }
    
    func multiplied(number: Int) -> Int {
        return number * multiple
    }
    
    func divided(number: Int) -> Float {
        return Float(number) / Float(divisor)
    }
}

