//
//  AppDelegate.swift
//  iSplitViewController
//
//  Created by i9400506 on 2021/9/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = .init()
        
        let sideMenuVC = SideMenuViewController()
        let detailVC = DetailViewController()
        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [sideMenuVC,detailVC]
        splitViewController.preferredDisplayMode = .oneOverSecondary
        
        self.window?.rootViewController = splitViewController
        self.window?.makeKeyAndVisible()
        return true
    }
}

