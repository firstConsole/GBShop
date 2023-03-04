//
//  SceneDelegate.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        
        let mainViewController = createNavigationViewController(controller: MainViewController(),
                                                                title: "Главная",
                                                                tabImage: UIImage(systemName: "house"),
                                                                tabTag: 0)
        let catalogViewController = createNavigationViewController(controller: CatalogViewController(),
                                                                   title: "Каталог",
                                                                   tabImage: UIImage(systemName: "rectangle.stack"),
                                                                   tabTag: 1)
        let cartViewController = createNavigationViewController(controller: CartViewController(),
                                                                title: "Корзина",
                                                                tabImage: UIImage(systemName: "cart"),
                                                                tabTag: 2)
        let profileViewController = createNavigationViewController(controller: ProfileViewController(),
                                                                   title: "Профиль",
                                                                   tabImage: UIImage(systemName: "person"),
                                                                   tabTag: 3)
        
        let tabBarViewController = UITabBarController()
        
        tabBarViewController.viewControllers = [mainViewController, catalogViewController, cartViewController, profileViewController]
        
        UITabBar.appearance().backgroundColor = .white
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    func createNavigationViewController(controller: UIViewController,
                                        title: String,
                                        tabImage: UIImage?,
                                        tabTag: Int) -> UINavigationController {
        let controller = controller
        
        controller.title = title
        controller.tabBarItem = UITabBarItem(title: title,
                                             image: tabImage,
                                             tag: tabTag)
        
        return UINavigationController(rootViewController: controller)
    }
}

