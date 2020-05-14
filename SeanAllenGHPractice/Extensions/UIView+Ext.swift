//
//  UIView+Ext.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 14/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
