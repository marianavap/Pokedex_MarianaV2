import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        window?.backgroundColor = .white
        let controller = PokedexFactory.makeController()
        let navigationController = configureNavigation(withController: controller)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
    
    private func configureNavigation(withController controller: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.tintColor = .gray
        return navigationController
    }
}

