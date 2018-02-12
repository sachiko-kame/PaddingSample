//
//  SampleTableViewCell.swift
//  PaddingSample
//
//  Created by 水野祥子 on 2018/02/12.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    @IBOutlet weak var SampleTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static let height:CGFloat = 60
    
    func Set(Text:String){
        self.SampleTextLabel.text = Text
    }
}
