//
//  TVPropertyViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVPropertyViewController: UIViewController {

    @IBOutlet weak var jumpButton: UIButton!
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        jumpButton.addTarget(self, action: #selector(jumpToNextViewController), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func jumpToNextViewController() {
        let goal = TVGoal2ViewController()
        
        goal.showlabel.text = self.input.text
        
        self.navigationController?.pushViewController(goal, animated: true)
        
    }
   

}
