//
//  UITableView+Ext.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 14/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero
        )
    }
}
