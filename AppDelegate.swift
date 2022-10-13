//
//  AppDelegate.swift
//  Food Delivery App
//
//  Created by Дмитрий Бессонов on 13.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
    
        runLaunchScreen()

return true
}

    func runMainFlow() {
        DispatchQueue.main.async {
            self.window?.rootViewController = MenuViewController()
        }
    }
    func runLaunchScreen() {
        let lauchScreenViewController = UIStoryboard(name: "LaunchScreen", bundle: .main)
            .instantiateInitialViewController()

        window?.rootViewController = lauchScreenViewController
    }
}
