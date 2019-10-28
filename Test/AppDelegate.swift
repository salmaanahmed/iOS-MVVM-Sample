//
//  AppDelegate.swift
//  Test
//
//  Created by Salmaan Ahmed on 12/10/2019.
//  Copyright © 2019 Salmaan Ahmed. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            
            // Initialized dependencies
            let calculationHandler = CalculationHandler()
            
            // Inject dependencies in `viewModel`
            let viewModel = ViewModel(calculationHandler: calculationHandler)
            
            window.rootViewController = ViewController(viewModel: viewModel)
            window.makeKeyAndVisible()
        }
        return true
    }
}

