//
//  TopUILabelCustomViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/12.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// UILabelをカスタムするサンプル
class TopUILabelCustomViewController: AppViewController {
    
    let mainView = AppFixedTableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Custom UILabel"
    }
    
    override func setupContentView() {
        contentView.changeMainView(mainView)

        setupMenuContents()
    }
    
    func setupMenuContents() {
        
        let fixedCellSection = FixedContents()

        fixedCellSection.append(CustomUIViewCell(title: "text and image", view: makeImageWithLabel()))

        mainView.sections.append(fixedCellSection)
    }

    /// 画像とタイトルのUILabelを作成する
    func makeImageWithLabel() -> UILabel {
        let label = UILabel()

//        if let image = UIImage(systemName: "moon") {
//            let attrString: NSAttributedString
//            label.attributedText = attrString
//        }
        
        return label
    }

}
