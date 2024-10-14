import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setControllers()
    }
    
    private lazy var newButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Some new button", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.shadowColor = UIColor(ciColor: .black).cgColor
        
        return button
    }()
    
    private func setControllers() {
        title = "Profile"
        
        view.backgroundColor = .lightGray
        view.addSubview(profileView)
        view.addSubview(newButton)
        
        addingLayoutConstraints()
    }
    
    private func addingLayoutConstraints() {
        profileView.translatesAutoresizingMaskIntoConstraints = false
        newButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileView.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
            newButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
