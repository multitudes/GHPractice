//
//  GFRepoItemVC.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 12/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

protocol GFRepoItemInfoVCDelegate: class {
    func didTapGitHubProfile(for user: User)
    }


class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemInfoVCDelegate!
    
    
    init(user: User, delegate: GFRepoItemInfoVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
    
}
