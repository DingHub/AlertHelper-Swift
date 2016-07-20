# AlertHelper-Swift

Show an alertView or actionSheet with a call back block.<br>
If the system version < 8.0, we will use UIAlertView  or UIActionSheet, otherwise, UIAlertController.

usage
---
```
showAlertViewFor(self,
                         title: "Title",
                         message: "Message",
                         destructiveButtonTitle: "destructive",
                         cancelButtonTitle: "cancel",
                         otherButtonTitles: ["boy", "girl"]) { index in
                            print(index)
        }
```
  
  We can also show an action sheet just almost like above.<br>
  <br>
  
  You can also find an Objective-C version [HERE](https://github.com/DingHub/AlertHelper-OC)
