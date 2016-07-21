//
//  ViewController.swift
//  MQHitTestDemo2
//
//  Created by mengmeng on 16/7/18.
//  Copyright © 2016年 mengQuietly. All rights reserved.
//

import UIKit

/**
 1. hitTest 方法是用
 2. 点击按钮，弹出新按钮，使用 hitTest 获取 新按钮点击事件
 */
class ViewController: UIViewController {
    @IBOutlet weak var clickBtn: MQClickButton!

    @IBAction func clickBtnClick(sender: MQClickButton) {
        let popBtn = UIButton(type: UIButtonType.Custom)
        popBtn.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
        popBtn.center = CGPoint(x: 100, y: -100)
        popBtn.setBackgroundImage(UIImage(named: "2"), forState: UIControlState.Normal)
        popBtn.setBackgroundImage(UIImage(named: "1"), forState: UIControlState.Highlighted)
        sender.clickB = popBtn
        sender.addSubview(popBtn)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

