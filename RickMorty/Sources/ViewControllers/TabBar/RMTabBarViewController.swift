//
//  RMTabBarViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import UIKit

class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        vcSetup()
    }

    func vcSetup() {
        
        let vcCharacter = RMCharacterViewController()
        let vcLocation = RMLocationViewController()
        let vcEpisodes = RMEpisodesViewController()
        let vcSettings = RMSettingsViewController()
        
        let nav1 = UINavigationController(rootViewController: vcCharacter)
        let nav2 = UINavigationController(rootViewController: vcLocation)
        let nav3 = UINavigationController(rootViewController: vcEpisodes)
        let nav4 = UINavigationController(rootViewController: vcSettings)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        vcCharacter.tabBarItem = UITabBarItem(
            title: "Character",
            image: UIImage(systemName: "person.circle"),
            tag: 0
        )
        
        vcLocation.tabBarItem = UITabBarItem(
            title: "Location",
            image: UIImage(systemName: "globe"),
            tag: 1
        )
        
        vcEpisodes.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "play.tv"),
            tag: 2
        )
        
        vcSettings.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 3
        )
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}
