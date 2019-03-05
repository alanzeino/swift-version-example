//
//  AppDelegate.swift
//  SwiftVersionExample
//
//  Created by Alan Zeino on 3/4/19.
//  Copyright © 2019 Alan Zeino. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow(frame: UIScreen.main.bounds)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        
        let str = "str"
        
        /* Using the swift directive */
        #if swift(>=4.2.2)
            _ = String.Index(utf16Offset: 1, in: str)
        #else
            _ = String.Index(encodedOffset: 1)
        #endif
        
        /* Using the compiler directive */
        #if compiler(>=5.0)
            _ = String.Index(utf16Offset: 1, in: str)
        #else
            _ = String.Index(encodedOffset: 1)
        #endif
        
        return true
    }
}

