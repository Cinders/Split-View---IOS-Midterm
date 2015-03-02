

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let splitViewController = self.window!.rootViewController as? UISplitViewController {
            let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as UINavigationController
            navigationController.topViewController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
            navigationController.topViewController.navigationItem.leftItemsSupplementBackButton = true
            splitViewController.delegate = splitViewController
        }
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
     
    }

    func applicationDidEnterBackground(application: UIApplication) {
  
    }

    func applicationWillEnterForeground(application: UIApplication) {
      
    }

    func applicationDidBecomeActive(application: UIApplication) {
       
    }

    func applicationWillTerminate(application: UIApplication) {
  
    }


}

