//
//  LaunchViewController.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 08/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if  let window = self.view.window {
            window.rootViewController = TabBarController()
            window.makeKeyAndVisible()
        }
    }
}
