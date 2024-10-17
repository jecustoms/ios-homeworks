import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setControllers()
        createBarButtonItem()
        print(#function)
    }
    
    private func setControllers() {
        if self.title == nil {
            self.title = "Default post title"
        }
        self.view.backgroundColor = .systemGray4
    }
    
    private func createBarButtonItem() {
        let barButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc private func tapAction() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true)
    }
}
