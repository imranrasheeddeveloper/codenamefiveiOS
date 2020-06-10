//
//  Extensions.swift
//  CodeNameFive
//
//  Created by Muhammad Imran on 10/06/2020.
//  Copyright © 2020 ITRID TECHNOLOGIES LTD. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    
    @IBInspectable var roundUpper : Bool{
        get{
            return true
        }
        set{
            self.layer.cornerRadius = 15.0
            self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            self.clipsToBounds = true        }
    }
    
    @IBInspectable var roundLower : Bool{
        get{
            return true
        }
        set{
            self.layer.cornerRadius = 15.0
            self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
            self.clipsToBounds = true
            
        }
    }
    
    @IBInspectable var enableShadow : Bool{
        get {
            return true
        }
        set{
//            let yourView = UIView()
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 1
            self.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
            self.layer.shadowRadius = 20.0
        }
    }
}
extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
