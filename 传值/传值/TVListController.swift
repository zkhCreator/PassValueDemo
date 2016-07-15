//
//  TVListController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        
        var contentValue:String
        
        switch indexPath.row {
        case 0:
            contentValue = "init 传值"
        case 1:
            contentValue = "property传值"
        case 2:
            contentValue = "Router 传值"
        case 3:
            contentValue = "Delegate 传值"
        case 4:
            contentValue = "闭包（block） 传值"
        case 5:
            contentValue = "Notification 传值"
        case 6:
            contentValue = "KVO（Key-Value-Observing）传值"
        case 7:
            contentValue = "AppDelegate 传值"
        case 8:
            contentValue = "NSUserDefaults 传值"
        default:
            contentValue = "数据错误"
        }
        
        cell?.textLabel?.text = contentValue

        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            let method1 = TVInitViewController()
            self.navigationController?.pushViewController(method1, animated:true)
        case 1:
            let method2 = TVPropertyViewController()
            self.navigationController?.pushViewController(method2, animated: true)
        case 2:
            let method3 = TVRouterViewController()
            self.navigationController?.pushViewController(method3, animated: true)
        case 3:
            let method4 = TVDelegateViewController()
            self.navigationController?.pushViewController(method4, animated: true)
        case 4:
            let method5 = TVClosureViewController()
            self.navigationController?.pushViewController(method5, animated: true)
        case 5:
            let method6 = TVNotifiVC()
            self.navigationController?.pushViewController(method6, animated: true)
        case 6:
            let method7 = TVKVOViewController()
            self.navigationController?.pushViewController(method7, animated: true)
        case 7:
            let method8 = TVAPPDeleViewController()
            self.navigationController?.pushViewController(method8, animated: true)
        case 8:
            let method9 = TVUserDefaultViewController()
            self.navigationController?.pushViewController(method9, animated: true)
        default:
            print("defalut")
        }
    }

}
