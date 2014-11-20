//
//  GJKButtonWithBadge.swift
//  TestBadge
//
//  Created by Thomas Liu on 11/20/14.
//  Copyright (c) 2014 guanjinke. All rights reserved.
//

import UIKit

class GJKButtonWithBadge: UIButton {
    private var badgeView:GJKBadgeView!
    
    override convenience init() {
        self.init(frame:CGRectZero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        badgeView = GJKBadgeView(frame: CGRectMake(frame.width - 9 , -9, 18, 18))
        badgeView.value = 0
        self.addSubview(badgeView)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override var frame: CGRect {
        didSet{
            if badgeView != nil {
                badgeView.frame =  CGRectMake(frame.width - 9 , -9, 18, 18)
            }
        }
    }
    
    var badgeValue : Int {
        get{
            return badgeView.value
        }
        set{
            badgeView.value = newValue
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
