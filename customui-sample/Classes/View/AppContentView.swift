//
//  AppContentView.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class AppContentView: UIView {
    
    var mainView = UIView()
    
    init() {
        super.init(frame: CGRect())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeMainView(_ v: UIView) {
        mainView.removeFromSuperview()
        self.addSubview(v)
        v.setupFitConstraint(to: self)
    }
    
}
