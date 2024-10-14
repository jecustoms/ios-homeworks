import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        
        let itemFeedView = UITabBarItem()
        let itemProfileView = UITabBarItem()
        
        itemFeedView.title = "Feed"
        itemProfileView.title = "Profile"
        
        itemFeedView.image = UIImage(named: "feedScreenImage")?.withRenderingMode(.alwaysOriginal)
        itemProfileView.image = UIImage(named: "profileScreenImage")?.withRenderingMode(.alwaysOriginal)
        
        feedNavigationController.tabBarItem = itemFeedView
        profileNavigationController.tabBarItem = itemProfileView
 
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(red: 0.34, green: 0.40, blue: 0.49, alpha: 0.1)
        feedNavigationController.navigationBar.scrollEdgeAppearance = appearance
        profileNavigationController.navigationBar.scrollEdgeAppearance = appearance
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [feedNavigationController, profileNavigationController]
        tabBarController.selectedViewController = feedNavigationController
        
        tabBarController.tabBar.layer.borderWidth = 0.3
        tabBarController.tabBar.layer.borderColor = UIColor(red: CGFloat(253.0 / 255.0), green: CGFloat(112.0 / 255.0), blue: CGFloat(20.0 / 255.0), alpha: CGFloat(1.0)).cgColor
        tabBarController.tabBar.backgroundColor = UIColor(red: CGFloat(238.0 / 255.0), green: CGFloat(238.0 / 255.0), blue: CGFloat(238.0 / 255.0), alpha: CGFloat(1.0))
        
        tabBarController.tabBar.tintColor = UIColor(red: CGFloat(253.0 / 255.0), green: CGFloat(112.0 / 255.0), blue: CGFloat(20.0 / 255.0), alpha: CGFloat(1.0))
        tabBarController.tabBar.unselectedItemTintColor = .black
        
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}
