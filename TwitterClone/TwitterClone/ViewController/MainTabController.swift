//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Muhammed Şendoğdu on 26.03.2023.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabBar()
    }
    
    func configureTabBar() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .cyan
        self.tabBar.standardAppearance = appearance
        self.tabBar.scrollEdgeAppearance = self.tabBar.standardAppearance
    }
    
    

}
