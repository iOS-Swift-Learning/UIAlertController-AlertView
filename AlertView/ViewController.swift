//
//  ViewController.swift
//  AlertView
//
//  Created by XCODE on 2015/12/10.
//  Copyright © 2015年 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {

//MARK: Normal function
//-------------------------------------

    func refreashWithFrame(frame:CGRect){
    
        self.view.frame = frame
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        //Button
        let buyBt:UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        buyBt.center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        buyBt.setTitle("購買完整版", forState: UIControlState.Normal)
        buyBt.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        buyBt.addTarget(self, action: Selector("onBuyBtAction:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(buyBt)
        

        
    }
    
//MARK: BtAction
//-------------------------------------
    func onBuyBtAction(sender:UIButton){ //sender:AnyObject任一型態 (可設定tag分辨是誰呼叫此方法)
                                         //"on":等待接收端
                                        //alertView為最高層級,可以脫離app後依然彈跳出來
        
        let alert:UIAlertView = UIAlertView(title: "Information", message: "buy?", delegate:self, cancelButtonTitle: "No", otherButtonTitles: "Yes","Maybe Next time")
        
        alert.show()
        //此 alertView 的 tag = 0
        
     
    }
    
//-------------------------------------
    
    
    
    
//MARK: alertView ClickedButtonAtIndex
//-------------------------------------
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        //print("\(buttonIndex)")
        
        if alertView.tag != 0 {
            
            return
        }
        
        let alert:UIAlertView =  UIAlertView(title: "回覆訊息", message: "", delegate: nil, cancelButtonTitle: "OK")
        
        alertView.tag = 1

        
        switch buttonIndex {
            
        case 0:
            break
            
        case 1:
            
            alert.message = "謝謝你的購買"
            
        case 2:

           alert.message = "給你三天考慮"
            
            
        default:
            break
            
        }
        
        alert.show()
        
    }
    
//-------------------------------------
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

