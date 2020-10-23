//
//  AutoLauoutSampleViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class AutoLauoutSampleViewController: AppViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "AutoLayout"
    }

    override func setupContentView() {
        contentView.changeMainView(mainView)
    }

}

extension AutoLauoutSampleViewController {
    
    class MainView: AppFixedTableView {
        
        override func setupContents() {
            
            let section = FixedContents()
            
            section.append {
                return AutoLayoutSampleTableViewCell(title: "Title (1)", onSelect: {
                    print("AutoLayoutSampleTableViewCell selected")
                })
            }
            
            section.append {
                return ContentHuggingPrioritySampleCell()
            }
            
            self.sections.append(section)
        }
        
    }
    
}
