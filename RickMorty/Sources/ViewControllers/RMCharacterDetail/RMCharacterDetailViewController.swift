//
//  RMCharacterDetailViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 14/04/23.
//

import Foundation
import UIKit
class RMCharacterDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "RMDetail"
    }
}
