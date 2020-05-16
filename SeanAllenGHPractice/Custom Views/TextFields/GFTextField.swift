//
//  GFTextField.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 10/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        keyboardType = .default
        returnKeyType = .go
        autocapitalizationType = .none
        
        clearButtonMode = .whileEditing
        placeholder = "Enter a username"
        #if DEBUG
                text = "sallen0400"
        #endif
    }
}
