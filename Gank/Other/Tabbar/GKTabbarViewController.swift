//
//  GKTabbarViewController.swift
//  Gank
//
//  Created by Wudi_Mac on 2019/8/1.
//  Copyright © 2019 WD. All rights reserved.
//

import UIKit

class GKTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newVc = NewViewController.init()
        newVc.tabBarItem.image = UIImage.init(named: "new")
        newVc.tabBarItem.selectedImage = UIImage.init(named: "new_active")
        newVc.tabBarItem.title = "今日"
        let newNav = GKNavViewController.init(rootViewController: newVc)

        
        let categoryVc = CategoryViewController.init()
        categoryVc.tabBarItem.image = UIImage.init(named: "category")
        categoryVc.tabBarItem.selectedImage = UIImage.init(named: "category_active")
        categoryVc.tabBarItem.title = "分类"
        let categoryNav = GKNavViewController.init(rootViewController: categoryVc)
        
        let meVc = MeViewController.init()
        meVc.tabBarItem.image = UIImage.init(named: "me")
        meVc.tabBarItem.selectedImage = UIImage.init(named: "me_active")
        meVc.tabBarItem.title = "我"
        let meNav = GKNavViewController.init(rootViewController: meVc)
        
        self.viewControllers = [newNav,categoryNav,meNav]
    }
}
