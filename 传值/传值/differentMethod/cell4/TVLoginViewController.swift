//
//  TVLoginViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

protocol LoginDelegate {
    func changeText(name:String)
}

class TVLoginViewController: UIViewController {
    
    @IBOutlet weak var label: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    
    var delegate:LoginDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.addTarget(self, action: #selector(clickLogin), forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clickLogin() {
        self.delegate?.changeText(self.label.text!)
        self.navigationController?.popViewControllerAnimated(true)
    }
    

}
