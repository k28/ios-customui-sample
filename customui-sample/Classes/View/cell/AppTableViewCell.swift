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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var onSelect: (() -> Void) = { }
    var isEnabled: Bool = true
    
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
