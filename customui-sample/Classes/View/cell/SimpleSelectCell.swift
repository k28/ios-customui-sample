//
//  SimpleSelectCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// Labelのみのセル
class SimpleSelectCell: AppTableViewCell, ICustomCell {
    
    var cellHeight: CGFloat = 44.0
    
    let mainView = SimpleSelectCellView()
    
    init(title: String, onSelect: @escaping (() -> Void)) {
        super.init(style: .default, reuseIdentifier: nil)
        
        self.addToContentView(mainView)
        
        self.onSelect = onSelect
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var title: String {
        get { mainView.titleLabel.text ?? "" }
        set { mainView.titleLabel.text = newValue }
    }
    
}

extension SimpleSelectCell {

    class SimpleSelectCellView: UIView {
        
        let titleLabel = UILabel()
        
        init() {
            super.init(frame: CGRect())
            setupSubviews()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupSubviews() {
            self.addSubview(titleLabel)
            
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: common.cellmargin).isActive = true
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -(common.cellmargin)).isActive = true
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        }
        
    }

}
