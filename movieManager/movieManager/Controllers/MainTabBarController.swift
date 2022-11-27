//
//  MainTabBarController.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 25.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // In order to display the navigation bar in the tab bar screen after we hide it in Login screen
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        // Set navigation title for first VC (Selected VC "Search")
        self.title = self.selectedViewController?.tabBarItem.title
    }
}

// In order to change Navigation title for each VC
extension MainTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // This will be done when we change the VC 
        tabBarController.title = viewController.tabBarItem.title
    }
    
}
