//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 08.10.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHV = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setControllers()
        print(#function)
    }
    
    private func setControllers() {
        view.backgroundColor = .white
        title = "User profile"
        profileHV.backgroundColor = .lightGray
        view.addSubview(profileHV)
    }
    
    override func viewWillLayoutSubviews() {
        profileHV.frame = view.safeAreaLayoutGuide.layoutFrame
    }
    
}
