//
//  AppViewController.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

/// Common View Controller
class AppViewController: UIViewController {
    
    let contentView: AppContentView = AppContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(contentView)
        contentView.setupFitConstraint(to: view)
        
        setupContentView()
    }
    
    /// サブクラスでオーバーライドする
    func setupContentView() {
        
    }

}
