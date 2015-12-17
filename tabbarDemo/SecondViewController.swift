//
//  SecondViewController.swift
//  tabbarDemo
//
//  Created by AlienLi on 15/12/17.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//
//    @IBAction func push(sender: AnyObject) {
//        
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        
//        let secondDetailVC = sb.instantiateViewControllerWithIdentifier("SecondDetailViewController")
//        
//        self.navigationController?.showViewController(secondDetailVC, sender: self)
//    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
//  
            if identifier == "push" {
                let secondDetailVC = segue.destinationViewController
                secondDetailVC.hidesBottomBarWhenPushed = true
            }
        }
        
    }
    

}
