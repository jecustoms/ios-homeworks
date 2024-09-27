//
//  PostViewController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 27.09.2024.
//

import UIKit

struct Post {
    let title: String
}

class PostViewController: UIViewController {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var informationButton: UIButton = {
        let button = UIButton(type: .infoLight)
        button.setTitle("", for: .normal)
        return button
    }()
    
    // Open Info on press
    @objc func didPressButton() {
        let ivc = InfoViewController()
        self.navigationController?.pushViewController(ivc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray4
        self.title = post.title
        
        informationButton.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
        self.navigationItem.setRightBarButton(UIBarButtonItem(customView: informationButton), animated: true)
    }
}
