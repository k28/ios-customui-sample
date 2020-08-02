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

    let mainView = AppFixedTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "XibCell"
    }

    override func setupContentView() {
        contentView.changeMainView(mainView)
    }

}
