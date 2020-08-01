//
//  UIColor-Extension.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/02.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

extension UIColor {

    /// ライト/ダーク用の色を受け取ってDynamic Colorを作って返す
    public class func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return dark
                } else {
                    return light
                }
            }
        }
        return light
    }

}

extension UIColor {
    
    static let appBackground: UIColor = UIColor.dynamicColor(light: .white, dark: .darkGray)
    
}
