//
//  File.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class common {
    
    static let cellmargin: CGFloat = 20.0
    
}

extension common {
    
    static func showLayerBounds(_ v: UIView, _ color: UIColor = .red) {
        v.layer.borderColor = color.cgColor
        v.layer.borderWidth = 2.0
    }
    
    static func loadString(_ key: String) -> String {
        let str = NSLocalizedString(key, comment: "")
        if str == key {
            print("Localize string not found \(key)")
        }
        
        return str
    }
    
}
