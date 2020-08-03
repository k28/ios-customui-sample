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
    
    var onSelect: (() -> Void) = { }
    var isEnabled: Bool = true
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    func addToContentView(_ v: UIView) {
        self.contentView.addSubview(v)
        v.setupFitConstraint(to: self.contentView)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

/// Cellをコードでカスタムする際に実装するプロトコル
protocol ICustomCell {
    
    /// Cellの高さを返します
    var cellHeight: CGFloat { get }
    
}
