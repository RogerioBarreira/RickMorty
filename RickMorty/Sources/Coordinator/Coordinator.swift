//
//  Coordinator.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import UIKit

class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func startRickMortyPersonList() {
        let viewController = RickMortyPersonListViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
