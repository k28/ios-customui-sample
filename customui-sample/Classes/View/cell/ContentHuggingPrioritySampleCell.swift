//
//  ContentHuggingPrioritySampleCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/10/24.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// UILabelのつぶれにくさを設定して狙ったUILabelの文字列が全て表示されるようにする
class ContentHuggingPrioritySampleCell: AppTableViewCell, ICustomCell {
    
    let mainView = MainView()
    var cellHeight: CGFloat = 44.0
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addToContentView(mainView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ContentHuggingPrioritySampleCell {

    class MainView: UIView {
        
        let leftSideLabel = UILabel()
        let rightSideLabel = UILabel()
        
        init() {
            super.init(frame: CGRect())
            setupSubviews()
            seutpContents()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupSubviews() {
            for view in [leftSideLabel, rightSideLabel] {
                self.addSubview(view)
                view.translatesAutoresizingMaskIntoConstraints = false
            }
            
            let offset: CGFloat = common.cellmargin
            leftSideLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: offset).isActive = true
            leftSideLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            leftSideLabel.trailingAnchor.constraint(lessThanOrEqualTo: rightSideLabel.leadingAnchor).isActive = true
            
            rightSideLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
            rightSideLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            
            // UIのつぶれにくさの優先度を設定する
            leftSideLabel.setContentCompressionResistancePriority(UILayoutPriority(749), for: .horizontal)
            rightSideLabel.setContentCompressionResistancePriority(UILayoutPriority(751), for: .horizontal)
        }
        
        func seutpContents() {
            leftSideLabel.text = "Left side sample label text."
            rightSideLabel.text = "Right side sample label text."
        }

    }

}


