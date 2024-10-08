//
//  FeedViewController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 27.09.2024.
//

import UIKit

class FeedViewController: UIViewController {

    let post = Post(title: " Post title")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray2
        self.title = "Feed"
        
        createButton()

        print(#function)
    }

    private func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        
        button.center = view.center
        button.setTitle("Open", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        
        view.addSubview(button)
        
        print(#function)
    }

    @objc private func tapAction() {
        let postVC = PostViewController()
        
        postVC.title = post.title
        
        navigationController?.pushViewController(postVC, animated: true)
        
        print(#function)
    }
}
