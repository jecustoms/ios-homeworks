//
//  InfoViewController.swift
//  Navigation
//
//  Created by Evgeny Nikiforov on 27.09.2024.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray6

        if self.title == nil {
            self.title = "Default info title"
        }
        
        createButton()
    }

    // create button
    private func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        
        button.center = view.center
        button.setTitle("Press", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        
        view.addSubview(button)
        
        print(#function)
    }

    // action on button press
    @objc private func tapAction() {
        // alert window
        let alert = UIAlertController(title: "Attention!", message: "The text message", preferredStyle: .alert)
        
        // add action for alert
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in
            print("OK pressed")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { _ in
            print("CANCEL pressed")
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}
