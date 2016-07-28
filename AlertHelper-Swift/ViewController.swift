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

    @IBAction func alertAction(sender: AnyObject) {
        /**
         *  Not ervery parameter is nessesary, you can note some with "//" to see diffrent effects
         */
        showAlertView("Title",
                      message: "Message",
                      destructiveButtonTitle: "destructive",
                      cancelButtonTitle: "cancel",
                      otherButtonTitles: ["boy", "girl"]) { buttonIndex in
                        print(buttonIndex)
        }
    }

    @IBAction func actionSheetAction(sender: AnyObject) {
        /**
         *  You can delete "//" to see different effects.
         */
        showActionSheet(//"Title",
                        //message: "Message",
                        //destructiveButtonTitle: "destructive",
//                        cancelButtonTitle: "cancel",
                        otherButtonTitles: ["boy", "girl"]) { index in
                            print(index)
        }
    }
}

