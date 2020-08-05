//
//  CustomButtonViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/05.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class CustomButtonViewController: AppViewController {
    
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Custom Button"
    }
    
    override func setupContentView() {
        contentView.changeMainView(mainView)
    }

}

extension CustomButtonViewController {
    
    class MainView: AppFixedTableView {
        
        override func setupContents() {
            
            let section = FixedContents()
            section.append(CustomUIViewCell(title: "title and image", view: makeButtonWithImage()))
            section.append(CustomUIViewCell(title: "title and right image", view: makeButtonWithRightImage()))
            self.sections.append(section)

        }
        
        /// 画像とタイトルのボタンを作成する
        func makeButtonWithImage() -> UIButton {
            let button = UIButton()
            
            button.setTitle("title", for: .normal)
            button.setImage(UIImage(systemName: "sun.max"), for: .normal)
            button.setTitleColor(.systemBlue, for: .normal)
            
            return button
        }
        
        /// 画像とタイトルのボタンを作成する(画像は右側)
        func makeButtonWithRightImage() -> UIButton {
            let button = UIButton()
            
            button.setTitle("title", for: .normal)
            button.setImage(UIImage(systemName: "moon"), for: .normal)
            button.setTitleColor(.systemBlue, for: .normal)
            button.semanticContentAttribute = .forceRightToLeft
            
            return button
        }
    }
    
}
