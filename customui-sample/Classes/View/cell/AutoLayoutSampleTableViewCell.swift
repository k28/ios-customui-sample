//
//  AutoLayoutSampleTableViewCell.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/04.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class AutoLayoutSampleTableViewCell: AppTableViewCell {
    
    let mainView = MainView()
    
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

extension AutoLayoutSampleTableViewCell {
    
    class MainView: UIView {
        
        let topStackView   = UIStackView()
        let imageView      = UIImageView()
        
        
        let titleStackView = UIStackView()
        let titleLabel     = UILabel()
        let subtitleLabel  = UILabel()
        let statusLabel    = UILabel()
        
        init() {
            super.init(frame: CGRect())
            setupSubviews()
            seutpContents()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupSubviews() {
            
            titleStackView.translatesAutoresizingMaskIntoConstraints = false
            titleStackView.axis = .vertical
            titleStackView.alignment = .leading
            titleStackView.distribution = .fill
            titleStackView.spacing = 4.0
            titleStackView.addArrangedSubview(titleLabel)
            titleStackView.addArrangedSubview(subtitleLabel)

            topStackView.translatesAutoresizingMaskIntoConstraints = false
            topStackView.axis = .horizontal
            topStackView.alignment = .center
            topStackView.distribution = .fill
            topStackView.spacing = 8.0
            
            topStackView.isLayoutMarginsRelativeArrangement = true
            topStackView.layoutMargins = UIEdgeInsets(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0)
            
            topStackView.addArrangedSubview(imageView)
            topStackView.addArrangedSubview(titleStackView)
            topStackView.addArrangedSubview(statusLabel)
            self.addSubview(topStackView)
            
            // TopStackViewを画面一杯に広げる
            topStackView.setupFitConstraint(to: self)
            
            // imageViewにサイズのプロパティを設定する
            imageView.widthAnchor.constraint(equalToConstant: 32.0).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 32.0).isActive = true
            
            common.showLayerBounds(imageView, .red)
            common.showLayerBounds(titleLabel, .red)
            common.showLayerBounds(subtitleLabel, .red)
            common.showLayerBounds(statusLabel)
        }
        
        func seutpContents() {
            imageView.image = UIImage.init(systemName: "square.and.arrow.up")
            titleLabel.font    = UIFont.systemFont(ofSize: 16)
            subtitleLabel.font = UIFont.systemFont(ofSize: 14)
            statusLabel.font   = UIFont.systemFont(ofSize: 16)
            
            titleLabel.text = "Title"
            subtitleLabel.text = "Subtitle"
            statusLabel.text = "Status"
        }
    }
    
}
