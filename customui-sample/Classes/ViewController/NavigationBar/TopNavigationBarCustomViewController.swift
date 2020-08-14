//
//  NavigationBarCustomViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/12.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// NavigationBarをカスタムするときのサンプル
class TopNavigationBarCustomViewController: AppViewController {
    
    let mainView = AppFixedTableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Navigation Bar"
    }
    
    override func setupContentView() {
        contentView.changeMainView(mainView)

        setupMenuContents()
    }
    
    func setupMenuContents() {
        
        let fixedCellSection = FixedContents()
        
        fixedCellSection.append(SimpleSelectCell(title: "Image Navigation Bar Title", onSelect: { [weak self] in
            let vc = TitleWithImageNavigationBarViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))

        mainView.sections.append(fixedCellSection)
    }
    
}
