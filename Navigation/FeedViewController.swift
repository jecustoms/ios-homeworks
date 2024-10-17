import UIKit

class FeedViewController: UIViewController {

    private lazy var post = Post(title: "Title")

    //stackView
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.backgroundColor = .green
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()

    private lazy var button1: UIButton = {
        let button = UIButton()

        button.setTitle("Some button", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
       
        return button
    }()

    private lazy var button2: UIButton = {
        let button = UIButton()
        
        button.setTitle("Another button", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
      
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        self.title = "User feed"
        
        view.addSubview(stackView)
        
        setLayots()
        
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        
        print(#function)
    }

    private func setLayots() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: super.view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: super.view.safeAreaLayoutGuide.bottomAnchor),
           stackView.leadingAnchor.constraint(equalTo: super.view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: super.view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }

    @objc private func tapAction() {
        let postVC = PostViewController()
        
        postVC.title = post.title
        
        navigationController?.pushViewController(postVC, animated: true)
       
        print(#function)
    }
}
