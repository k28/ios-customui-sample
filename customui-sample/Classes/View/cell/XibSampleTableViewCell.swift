//
//  XibSampleTableViewCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/03.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class XibSampleTableViewCell: AppTableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
