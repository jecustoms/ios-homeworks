import UIKit

struct Post {
    let title: String
}

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setControllers()
    }
    
    private func setControllers() {
        let logoutBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(presentInfoViewController))

        view.backgroundColor = .black

        self.navigationItem.rightBarButtonItem = logoutBarButtonItem
    }
    
    @objc func presentInfoViewController() {
        let infoViewController = InfoViewController()
        let infoNavigationController = UINavigationController(rootViewController: infoViewController)
      
        present(infoNavigationController, animated: true, completion: nil)
    }
}
