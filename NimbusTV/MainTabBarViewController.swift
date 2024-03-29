//
//  MainTabBarViewController.swift
//  NimbusTV
//
//  Created by Patrick Nguyen on 2022-12-15.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .label
        setViewControllers([createHomeNavigationController(), createUpcomingNavigationController(), createSearchNavigationController(), createDownloadsNavigationController()], animated: true)
    }
    
    
    func createHomeNavigationController() -> UINavigationController {
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        homeViewController.title = "Home"
        return UINavigationController(rootViewController: homeViewController)
    }
    
    func createUpcomingNavigationController() -> UINavigationController {
        let upcomingViewController = UpcomingViewController()
        upcomingViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        upcomingViewController.title = "Upcoming"
        return UINavigationController(rootViewController: upcomingViewController)
    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchViewController.title = "Search"
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createDownloadsNavigationController() -> UINavigationController {
        let downloadsViewController = DownloadsViewController()
        downloadsViewController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        downloadsViewController.title = "Downloads"
        return UINavigationController(rootViewController: downloadsViewController)
    }

}
