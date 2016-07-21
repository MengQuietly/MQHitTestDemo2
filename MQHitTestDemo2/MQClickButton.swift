//
//  MQClickButton.swift
//  MQHitTestDemo2
//
//  Created by mengmeng on 16/7/18.
//  Copyright © 2016年 mengQuietly. All rights reserved.
//

import UIKit

class MQClickButton: UIButton {
    
    var clickB = UIButton()

    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        
        let clickP:CGPoint = self.convertPoint(point, toView: clickB)
        // 判断点是否在“新图片”按钮上，是就返回“新图片”
        if clickB.pointInside(clickP, withEvent: event) == true {
            return clickB
        }else{
            return super.hitTest(point, withEvent: event)
        }
    }

    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch:AnyObject in touches {
            let t = touch
            let currentP = t.locationInView(self)
            let beforeP = t.previousLocationInView(self)
            
            let xM = currentP.x - beforeP.x
            let yM = currentP.y - beforeP.y
            
            var centerP = self.center
            centerP.x += xM
            centerP.y += yM
            
            self.center = centerP
        }
    }
}
