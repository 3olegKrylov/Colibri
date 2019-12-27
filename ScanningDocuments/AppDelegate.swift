//
//  AppDelegate.swift
//  ScanningDocuments
//
//  Created by 3oleg_krylov on 22/10/2019.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UITextViewWorkaround.execute()
        return true
    }
}

