# AlertHelper-Swift

Show an alertView or actionSheet with a call back block.<br>
If the system version < 8.0, we will use UIAlertView  or UIActionSheet, otherwise, UIAlertController.<br>

usage
---
```
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
```
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
  <br>
  
  You can also find an Objective-C version [HERE](https://github.com/DingHub/AlertHelper-OC)
