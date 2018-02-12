//
//  PaddingLabel.swift
//  PaddingSample
//
//  Created by 水野祥子 on 2018/02/13.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

//参考　https://qiita.com/ryokosuge/items/eb64ed8e6d718378f770
class PaddingLabel: UILabel {

    var padding: UIEdgeInsets = UIEdgeInsets(top: 40, left: 80, bottom: 40, right: 80)
    
    override func drawText(in rect: CGRect) {
        let newRect = UIEdgeInsetsInsetRect(rect, padding)
        super.drawText(in: newRect)
    }
    
    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        return contentSize
    }

}
