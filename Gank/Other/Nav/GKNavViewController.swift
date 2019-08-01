//
//  GKNavViewController.swift
//  Gank
//
//  Created by Wudi_Mac on 2019/8/1.
//  Copyright © 2019 WD. All rights reserved.
//

import UIKit

class GKNavViewController: UINavigationController, UIGestureRecognizerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
        delegate = self
        self.navigationBar.setBackgroundImage(UIImage.init(named: "nav_bg"), for: UIBarMetrics.default)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}
