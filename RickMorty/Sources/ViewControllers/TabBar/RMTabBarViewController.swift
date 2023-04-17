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
        
        let nav = Coordinator(navigationController: navigationController.self)
        
        nav.vcCharacter.tabBarItem = UITabBarItem(
            title: "Character",
            image: UIImage(systemName: "person.circle"),
            tag: 0
        )
        
        nav.vcLocation.tabBarItem = UITabBarItem(
            title: "Location",
            image: UIImage(systemName: "globe"),
            tag: 1
        )
        
        nav.vcEpisodes.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "play.tv"),
            tag: 2
        )
        
        nav.vcSettings.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 3
        )
        
        setViewControllers([nav.vcCharacter, nav.vcLocation, nav.vcEpisodes, nav.vcSettings], animated: true)
    }
}
