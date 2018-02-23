# AlertHelper-Swift

An extension of UIViewController to add handy methods to show alerts with button call back closure.<br>
If the system version < 8.0, we will use UIAlertView  or UIActionSheet, otherwise, UIAlertController.<br>

Impletion :<br>
Extensions of UIAlertView, UIActionSheet and UIAlertController to add closure use, and an extension of UIViewController to show alert.<br>

usage
---
```swift
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
```
 We can also show an action sheet just almost like above:<br>
```swift
    @IBAction func actionSheetAction(sender: AnyObject) {
        /**
         *  You can delete "//" to see different effects.
         */
        showActionSheet(//"Title",
                        //message: "Message",
                        //destructiveButtonTitle: "destructive",
                        //cancelButtonTitle: "cancel",
                        otherButtonTitles: ["boy", "girl"]) { index in
                            print(index)
        }
    }
```
You can also find an Objective-C version [HERE](https://github.com/DingHub/AlertHelper-OC)
