//
//  AppTableViewCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/01.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// Common TableViewCell
class AppTableViewCell: UITableViewCell {
    
    func setContentView(_ v: UIView) {
        self.contentView.addSubview(v)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
