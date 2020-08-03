//
//  XibCellSampleViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// Xibでセルを作成する場合のサンプル
class XibCellSampleViewController: AppViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "XibCell"
    }

    override func setupContentView() {
        contentView.changeMainView(mainView)
    }

}

extension XibCellSampleViewController {
    
    class MainView: AppFixedTableView {
        
        let SampleXibCell = "XibSampleTableViewCell"
        override func setupContents() {
            self.register(UINib(nibName: "XibSampleTableViewCell", bundle: nil), forCellReuseIdentifier: SampleXibCell)
            
            guard let cell = self.dequeueReusableCell(withIdentifier: SampleXibCell) as? XibSampleTableViewCell else {
                assertionFailure("XibSampleTableViewCell is nil")
                return
            }
            
            cell.onSelect = { print("XibSampleTableViewCell selected!") }
            cell.titleLabel.text = "XibSampleTableViewCell"
            cell.slider.minimumValue = 0.0
            cell.slider.maximumValue = 1.0
            cell.slider.value = 0.75
            
            let section = FixedContents()
            section.append(cell)
            self.sections.append(section)
            
        }
    }
    
}
