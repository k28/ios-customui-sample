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
        
        fixedCellSection.append(SimpleSelectCell(title: "Auto Layout", onSelect: { [weak self] in
            let vc = AutoLauoutSampleViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))

        fixedCellSection.append(SimpleSelectCell(title: "XibCell", onSelect: { [weak self] in
            let vc = XibCellSampleViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))
        
        fixedCellSection.append(SimpleSelectCell(title: "Custom Button", onSelect: { [weak self] in
            let vc = CustomButtonViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))
        
        fixedCellSection.append(SimpleSelectCell(title: "UILabel", onSelect: { [weak self] in
            let vc = TopUILabelCustomViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }))

        //FIXME: 工事中
//        fixedCellSection.append(SimpleSelectCell(title: "Navigation Bar", onSelect: { [weak self] in
//            let vc = TopNavigationBarCustomViewController()
//            self?.navigationController?.pushViewController(vc, animated: true)
//        }))
        


        mainView.sections.append(fixedCellSection)
    }
    
}

