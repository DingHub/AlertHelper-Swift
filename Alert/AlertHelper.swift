//
//  AlertHelper.swift
//  AlertHelper-Swift
//
//  Created by admin on 16/7/28.
//  Copyright © 2016年 Ding. All rights reserved.
//

import UIKit

public typealias AlertButtonTappedAction = (Int) -> Void;

public class AlertHelper: NSObject, UIAlertViewDelegate, UIActionSheetDelegate {
    
    public static let sharedHelper = AlertHelper()
    
    public func alertView(_ alertView: UIAlertView, clickedButtonAt buttonIndex: Int) {
        if let handler = alertButtonTappedHandler {
            handler(buttonIndex)
            alertButtonTappedHandler = nil
        }
    }
    
    public func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int) {
        if let handler = alertButtonTappedHandler {
            handler(buttonIndex)
            alertButtonTappedHandler = nil
        }
    }
    
    private override init() {}
    private var alertButtonTappedHandler: AlertButtonTappedAction?
    func setButtonTappedHandler(action: AlertButtonTappedAction?) {
        alertButtonTappedHandler = action
    }
    
}

