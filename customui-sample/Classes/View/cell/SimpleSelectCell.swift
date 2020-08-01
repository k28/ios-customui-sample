//
//  SimpleSelectCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class SimpleSelectCell: AppTableViewCell {
    
    init(title: String, onSelect: @escaping (() -> Void)) {
        super.init(style: .default, reuseIdentifier: nil)
        
        self.textLabel?.text = title
        self.onSelect = onSelect
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
