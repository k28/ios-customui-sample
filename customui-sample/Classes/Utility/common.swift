//
//  File.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

class common {
}

extension common {
    
    static func showLayerBounds(_ v: UIView, _ color: UIColor = .red) {
        v.layer.borderColor = color.cgColor
        v.layer.borderWidth = 2.0
    }
    
}
