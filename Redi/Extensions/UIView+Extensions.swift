//
//  UIView+Extensions.swift
//  Redi
//
//  Created by Berezhnova <3 on 01.02.2024.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16)/255.0,
            green: CGFloat((hex & 0x00FF00) >> 8)/255.0,
            blue: CGFloat(hex & 0x0000FF)/255.0,
            alpha: alpha
        )
    }
}
