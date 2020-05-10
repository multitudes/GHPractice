//
//  FollowerListVC.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 10/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
        
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(username)
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    


}
