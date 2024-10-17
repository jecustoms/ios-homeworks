import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setControllers()
        createButton()
    }

    private func setControllers() {
        if self.title == nil {
            self.title = "Default info title"
        }
        self.view.backgroundColor = .systemGray6
    }

    private func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        
        button.center = view.center
        button.setTitle("Press", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
       
        view.addSubview(button)
        
        print(#function)
    }

    @objc private func tapAction() {
        let alert = UIAlertController(title: "Attention!", message: "The text message", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in
            print("OK pressed")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { _ in
            print("Cancel pressed")
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
       
        present(alert, animated: true)
    }
}
