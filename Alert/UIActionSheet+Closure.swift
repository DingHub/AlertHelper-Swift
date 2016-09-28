//
//  UIActionSheet+Closure.swift
//  AlertHelper-Swift
//
//  Created by admin on 16/7/20.
//  Copyright © 2016年 Ding. All rights reserved.
//

import UIKit

public extension UIActionSheet {
    
    /**
     - parameter buttonTappedHandler: The index of buttons will ordered like : destructive button -> cancel button -> other buttons
     */
    public static func show(in view: UIView,
                            title: String? = nil,
                            destructiveTitle: String? = nil,
                            cancelButtonTitle: String? = nil,
                            otherButtonTitles: [String]? = nil,
                            buttonTappedHandler: AlertButtonTappedAction? = nil) {
        
        let actionSheet = UIActionSheet(title: title,
                                        delegate: AlertHelper.sharedHelper,
                                        cancelButtonTitle: cancelButtonTitle,
                                        destructiveButtonTitle: destructiveTitle)
        
        if let otherButtonTitles = otherButtonTitles {
            for title in otherButtonTitles {
                actionSheet.addButton(withTitle: title)
            }
        }
        AlertHelper.sharedHelper.setButtonTappedHandler(action: buttonTappedHandler)
        actionSheet.show(in: view)
        
    }
}
