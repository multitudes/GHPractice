//
//  GFButton.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 10/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        //titleLabel?.textColor = .white
        setTitleColor(.white, for: .normal)  // this is the correct way to set the text color for a button
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
