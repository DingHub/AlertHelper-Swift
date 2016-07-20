//
//  ViewController.swift
//  AlertHelper-Swift
//
//  Created by admin on 16/7/20.
//  Copyright © 2016年 Ding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showAlertView(sender: AnyObject) {
        showAlertViewFor(self,
                         title: "Title",
                         message: "Message",
                         destructiveButtonTitle: "destructive",
                         cancelButtonTitle: "cancel",
                         otherButtonTitles: ["boy", "girl"]) { index in
                            print(index)
        }
    }

    @IBAction func showActionSheet(sender: AnyObject) {
        
        showActionSheetFor(self,
                           title: "Title",
                           message: "Message",
                           destructiveButtonTitle: "destructive",
                           cancelButtonTitle: "cancel",
                           otherButtonTitles: ["boy", "girl"]) { index in
                            print(index)
        }
    }
}

