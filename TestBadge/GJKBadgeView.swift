//
//  BadgeView.swift
//  TestBadge
//
//  Created by Thomas Liu on 11/19/14.
//  Copyright (c) 2014 guanjinke. All rights reserved.
//

import UIKit

class GJKBadgeView: UIView {
    var fontAttributes = [NSObject: AnyObject]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.redColor()
        self.layer.masksToBounds = true
        self.layer.cornerRadius = frame.height / 2
        self.layer.zPosition = 1
        self.alpha = 0
        
        fontAttributes[NSFontAttributeName] = UIFont.boldSystemFontOfSize(14)
        fontAttributes[NSForegroundColorAttributeName] = UIColor.whiteColor()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var value: Int = 0 {
        didSet{
            if oldValue != value {
                if value == 0 {
                    self.alpha = 0
                }
                else {
                    if textSize.width < 18 {
                        self.bounds = CGRect(origin: CGPointZero, size: CGSizeMake(18, 18))
                    }else {
                        self.bounds = CGRectMake(0, 0, textSize.width+4, self.bounds.height)
                    }
                    self.alpha = 1
                    self.setNeedsDisplay()
                }
            }
        }
    }
    
    var textSize : CGSize {
        var text = String(value)
        return  text.sizeWithAttributes(fontAttributes)
    }
    
    override func drawRect(rect: CGRect) {
        var text = String(value) as NSString
        text.drawAtPoint(CGPointMake(self.bounds.width/2 - textSize.width/2 , 0), withAttributes: fontAttributes)
    }
}
