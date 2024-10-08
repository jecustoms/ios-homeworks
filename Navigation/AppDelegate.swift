//
//  AppDelegate.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 27.09.2024.
//

import UIKit

//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        
//        window = UIWindow(frame: UIScreen.main.bounds)
//
//        window?.rootViewController = TabBarController()
//        window?.makeKeyAndVisible()
//        
//        print(#function)
//        
//        return true
//    }
//}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
        
        print(#function)
        
        return true
    }
}
