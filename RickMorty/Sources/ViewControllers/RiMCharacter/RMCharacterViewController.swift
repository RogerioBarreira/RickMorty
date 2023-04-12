//
//  RMCharacterViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import UIKit

class RMCharacterViewController: UIViewController {
    
    lazy var viewRMCharacter: RMCharacterView = {
        let view = RMCharacterView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Character"
    }
    
    override func loadView() {
        self.view = viewRMCharacter
    }
}
