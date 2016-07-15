//
//  TVPropertyViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVInitViewController: UIViewController {
    
    let input = UITextField.init()
    let jumpButton = UIButton.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(input)
        self.view.addSubview(jumpButton)
        
        input.frame = CGRectMake(30, 200, 100, 100)
        input.placeholder = "请输入内容"
        let frame = input.frame
        
        jumpButton.frame = CGRectMake(frame.origin.x, frame.origin.y+100, 100, 100)
        jumpButton.setTitle("跳转(jump)", forState: UIControlState.Normal)
        jumpButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        jumpButton.addTarget(self, action: #selector(jumpToNextVC), forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func jumpToNextVC() {
        let goal = TVGoalViewController.init(text: self.input.text!)
        navigationController?.pushViewController(goal, animated: true)
    }
    
}
