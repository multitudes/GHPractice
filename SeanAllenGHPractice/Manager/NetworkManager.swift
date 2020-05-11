//
//  NetworkManager.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 10/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import Foundation


class NetworkManager {
    
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, ErrorMessage?) -> Void ) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, .unableToComplete)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            //print(data, response, error)
            if let _ = error {
                completed(nil, .invalidResponseFromTheServer)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponseFromTheServer)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, .invalidData)
            }
        }
        task.resume()
    }
}
