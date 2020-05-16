//
//  Date+Ext.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 12/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import Foundation


extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
