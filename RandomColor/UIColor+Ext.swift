//
//  UIColor+Ext.swift
//  RandomColor
//
//  Created by MohammadHossein Nejadhendi on 9/19/1401 AP.
//

import UIKit

extension UIColor{
   static func random()-> UIColor{
        var randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColor
    }
}

