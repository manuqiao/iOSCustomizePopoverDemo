//
//  BackgroundView.swift
//  PopOverDemo
//
//  Created by 乔汝嘉 on 2018/6/29.
//  Copyright © 2018年 ManuQiao. All rights reserved.
//

import UIKit

class BackgroundView: UIPopoverBackgroundView {
    
    var borderImageView: UIView?
    var arrowView: UIImageView?
    
    override var arrowOffset: CGFloat {
        get {
            return 0
        }
        set {
            
        }
    }
    
    override var arrowDirection: UIPopoverArrowDirection {
        get {
            return .up
        }
        set {
            
        }
    }
    
    override static func arrowBase() -> CGFloat {
        return 0
    }
    
    override static func contentViewInsets() -> UIEdgeInsets {
        return .zero
    }
    
    override static func arrowHeight() -> CGFloat {
        return 0
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        let screenRect = UIScreen.main.bounds
        let rect = CGRect(x: 0 - (screenRect.width - bounds.width) / 2, y: 0 - (screenRect.height - bounds.height) / 2, width: screenRect.width, height: screenRect.height)
        
        borderImageView = UIView(frame: rect)
        borderImageView?.backgroundColor = UIColor.init(white: 0, alpha: 0.3)
        borderImageView?.layer.shadowOpacity = 0
        addSubview(borderImageView!)
        
        layer.shadowColor = UIColor.clear.cgColor// 去掉popover背景阴影
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
