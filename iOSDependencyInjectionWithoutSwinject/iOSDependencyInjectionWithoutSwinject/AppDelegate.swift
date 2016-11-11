import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    lazy var textProvider: TextProvider = {
        return TextProvider(text: "Hello, iOS!")
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        inject()
        return true
    }
    
    func inject() {
        let tabBarController = window!.rootViewController as! UITabBarController
        
        if let viewControllers = tabBarController.viewControllers {
            for var viewController in viewControllers {
                if var withTextProvider = viewController as? IHaveTextProvider {
                    withTextProvider.textProvider = textProvider
                }
            }
        }
    }
}





