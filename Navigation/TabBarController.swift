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
        setupControllers()
        print(#function)
    }
    
    private func setupControllers() {
        let feedNC = UINavigationController(rootViewController: feedVC)
        let profileNC = UINavigationController(rootViewController: profileVC)
        
        feedNC.tabBarItem.title = "Feed"
        profileNC.tabBarItem.title = "User"
        
        feedNC.tabBarItem.image = UIImage(systemName: "house.fill")
        profileNC.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
        
        feedNC.view.backgroundColor = .brown
        profileNC.view.backgroundColor = .cyan
        
        viewControllers = [feedNC, profileNC]
        print(#function)
    }
}
