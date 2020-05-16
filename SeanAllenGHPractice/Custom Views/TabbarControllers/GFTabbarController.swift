//
//  GFTabbarController.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 14/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class GFTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoritesListNC()]
    }

  
  func createSearchNC() -> UINavigationController {
      let searchVC = SearchVC()
      searchVC.title = "Search"
      searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
      return UINavigationController(rootViewController: searchVC)
  }
  
  
  func createFavoritesListNC() -> UINavigationController {
      let favoritesVC = FavoritesListVC()
      favoritesVC.title = "Favorites"
      favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
      return UINavigationController(rootViewController: favoritesVC)
  }
}
