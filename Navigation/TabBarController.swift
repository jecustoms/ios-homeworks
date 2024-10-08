//
//  TabBarController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 08.10.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setControllers()
        print(#function)
    }
    
    private func setControllers() {
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .blue
        
        let feedNC = UINavigationController(rootViewController: feedVC)
        let profileNC = UINavigationController(rootViewController: profileVC)
        
        feedNC.tabBarItem.title = "Feed"
        profileNC.tabBarItem.title = "User"
        
        feedNC.tabBarItem.image = UIImage(systemName: "house.fill")
        profileNC.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
        
        feedNC.view.backgroundColor = .brown
        profileNC.view.backgroundColor = .cyan
        profileNC.navigationBar.backgroundColor = .white

        viewControllers = [feedNC, profileNC]
        print(#function)
    }
}
