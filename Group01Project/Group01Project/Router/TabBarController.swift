//
//  TabBarController.swift
//  Group01Project
//
//  Created by Zensis on 21/11/2019.
//  Copyright © 2019 Stanley. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        let tabBar = appDelegate.window!.rootViewController as! UITabBarController

           tabBar.selectedIndex = 2
  

           }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
