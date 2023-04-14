//
//  Coordinator.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import UIKit

class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    let vcCharacter = RMCharacterViewController()
    let vcLocation = RMLocationViewController()
    let vcEpisodes = RMEpisodesViewController()
    let vcSettings = RMSettingsViewController()
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func startTabBar() {
        let viewController = RMTabBarViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startRMDetailCharacter() {
        let viewController = RMCharacterDetailViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
