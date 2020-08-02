//
//  MainViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// 一番初めに表示されるViewController
class MainViewController: AppViewController {
    
    let mainView = AppFixedTableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func setupContentView() {
        contentView.changeMainView(mainView)

        setupMenuContents()
    }
    
    func setupMenuContents() {
        
        let fixedCellSection = FixedContents()
        
        fixedCellSection.append(SimpleSelectCell(title: "AutoLayout", onSelect: { [weak self] in
            let vc = AutoLauoutSampleViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))

        fixedCellSection.append(SimpleSelectCell(title: "XibCell", onSelect: { [weak self] in
            let vc = XibCellSampleViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))

        mainView.sections.append(fixedCellSection)
    }
    
}

