//
//  FeedViewController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 27.09.2024.
//

import UIKit

import UIKit

class FeedViewController: UIViewController {
    
    private var button: UIButton = {
        let button = UIButton(type: .system)
    
        button.setTitle("Open", for: .normal)
        
        return button
    }()
    
    @objc func didPressButton() {
        let currentPost = Post(title: "Post")
        let postViewContrroller = PostViewController(post: currentPost)
        
        self.navigationController?.pushViewController(postViewContrroller, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray2
        self.view.addSubview(button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        self.button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
    }
}
