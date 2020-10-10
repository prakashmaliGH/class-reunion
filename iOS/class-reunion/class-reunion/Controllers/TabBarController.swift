//
//  TabViewController.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 09/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(identifier: "HomeViewRootController")
        vc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home-selected"))
        
        let vc2 = storyboard.instantiateViewController(identifier: "EventsViewRootController")
        vc2.tabBarItem = UITabBarItem(title: "Events", image: UIImage(named: "event"), selectedImage: UIImage(named: "event"))
        
        let vc3 = storyboard.instantiateViewController(identifier: "FavouritesViewRootController")
        vc3.tabBarItem = UITabBarItem(title: "Favourites", image: UIImage(named: "flag"), selectedImage: UIImage(named: "flag-selected"))
        
        let vc4 = storyboard.instantiateViewController(identifier: "GalleryViewRootController")
        vc4.tabBarItem = UITabBarItem(title: "Gallery", image: UIImage(named: "gallery"), selectedImage: UIImage(named: "gallery-selected"))
        
        let vc5 = storyboard.instantiateViewController(identifier: "SettingsViewRootController")
        vc5.tabBarItem = UITabBarItem(title: "settings", image: UIImage(named: "settings"), selectedImage: UIImage(named: "settings-selected"))
    
        setupTabBar()
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
    }
    
    func setupTabBar() {
        tabBar.barTintColor = .black
        tabBar.tintColor = .orange
        tabBar.isTranslucent = false
    }
    
}
