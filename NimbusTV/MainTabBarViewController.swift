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
        homeViewController.title = "Home"
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        return UINavigationController(rootViewController: homeViewController)
    }
    
    func createUpcomingNavigationController() -> UINavigationController {
        let upcomingViewController = UpcomingViewController()
        upcomingViewController.title = "Upcoming"
        upcomingViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        return UINavigationController(rootViewController: upcomingViewController)
    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createDownloadsNavigationController() -> UINavigationController {
        let downloadsViewController = DownloadsViewController()
        downloadsViewController.title = "Downloads"
        downloadsViewController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        return UINavigationController(rootViewController: downloadsViewController)
    }

}
