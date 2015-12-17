//
//  FirstViewController.swift
//  tabbarDemo
//
//  Created by AlienLi on 15/12/17.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        transitionViewController.addTarget(self, action: "transition", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var transitionViewController: UIButton!

    func transition() {
        
        if let tabBarController = self.tabBarController {
            
            tabBarController.selectedIndex = 1
            let secondVC = tabBarController.viewControllers![1] as! UINavigationController
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let secondDetail = sb.instantiateViewControllerWithIdentifier("SecondDetailViewController") as? SecondDetailViewController
            secondDetail?.hidesBottomBarWhenPushed = true
            
            secondVC.pushViewController(secondDetail!, animated: true)
            
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
