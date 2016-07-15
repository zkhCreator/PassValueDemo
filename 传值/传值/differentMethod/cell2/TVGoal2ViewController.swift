//
//  TVGoal2ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVGoal2ViewController: UIViewController {
    
    var showlabel = UILabel.init()
    var backButton = UIButton.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(showlabel)
        view.addSubview(backButton)
        
        showlabel.frame = CGRectMake(0, 100, 100, 40)
        backButton.frame = CGRectMake(0, 140, 100, 40)
        
        backButton.setTitle("返回(back)", forState: UIControlState.Normal)
        backButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        backButton.addTarget(self, action: #selector(back), forControlEvents: UIControlEvents.TouchUpInside)

    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        self.init(nibName:nil, bundle:nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func back() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    

}
