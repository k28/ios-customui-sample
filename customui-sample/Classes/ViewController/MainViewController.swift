//
//  MainViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class MainViewController: AppViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func setupContentView() {
        
        contentView.changeMainView(mainView)
    }
    
}

extension MainViewController {
    
    class MainView: AppFixedTableView {
        
        override func setupContents() {
            
            let sample = SimpleSelectCell(title: "Test", onSelect: {
                print("SimpleCell Selected!")
            })
            
            let normalCell = AppTableViewCell(style: .default, reuseIdentifier: nil)
            normalCell.textLabel?.text = "UITableViewCell"
            
            let fixedCellSection = FixedContents()
            fixedCellSection.append(sample)
            fixedCellSection.append(normalCell)
            self.sections.append(fixedCellSection)
        }
    }
    
}
