//
//  User.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 10/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import Foundation


struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: String?
    var publicGists: String?
    var htmlUrl: String?
    var following: Int
    var follower: Int
    var createdAt: String
}
