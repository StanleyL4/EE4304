//
//  MainViewController.swift
//  Group01Project
//
//  Created by Zensis on 7/11/2019.
//  Copyright © 2019 Stanley. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    var rootRouter: RootRouter? {
       return router as? RootRouter
     }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        navigationItem.leftItemsSupplementBackButton = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        rootRouter?.showTest()
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
