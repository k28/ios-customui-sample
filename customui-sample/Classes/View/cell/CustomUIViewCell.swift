//
//  CustomUIViewCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/05.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// 独自のViewを右側に表示するCell
class CustomUIViewCell: AppTableViewCell {
    
    let mainView: MainView
    
    init (title: String, view: UIView) {
        mainView = MainView(view)
        super.init(style: .default, reuseIdentifier: nil)
        self.addToContentView(mainView)
        self.titie = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var titie: String {
        get { mainView.titleLabel.text ?? "" }
        set { mainView.titleLabel.text = newValue }
    }
}

extension CustomUIViewCell {
    
    class MainView: UIView {
        
        let titleLabel   = UILabel()
        let topStackView = UIStackView()
        
        init(_ view: UIView) {
            super.init(frame: CGRect())

            setupSubviews(view)
            seutpContents()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupSubviews(_ view: UIView) {
            
            topStackView.translatesAutoresizingMaskIntoConstraints = false
            topStackView.axis = .horizontal
            topStackView.alignment = .center
            topStackView.distribution = .fill
            topStackView.spacing = 8.0
            
            topStackView.isLayoutMarginsRelativeArrangement = true
            topStackView.layoutMargins = UIEdgeInsets(top: 20.0, left: 8.0, bottom: 20.0, right: 8.0)
            
            topStackView.addArrangedSubview(titleLabel)
            topStackView.addArrangedSubview(view)
            self.addSubview(topStackView)
                        
            // TopStackViewを画面一杯に広げる
            topStackView.setupFitConstraint(to: self)
            
        }
        
        func seutpContents() {
        }

    }
    
}
