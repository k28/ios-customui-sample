//
//  NSLayoutConstraint-Extension.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

extension UIView {
    
    func setupFitConstraint(to: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalTo: to.widthAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: to.centerXAnchor).isActive = true
        self.heightAnchor.constraint(equalTo: to.heightAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: to.centerYAnchor).isActive = true
    }
    
    
}
