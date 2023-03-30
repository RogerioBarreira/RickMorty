//
//  RickMortyPersonListViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import UIKit

class RickMortyPersonListViewController: UIViewController {
    
    lazy var viewRickMortyPersonList: RickMortyPersonListView = {
        let view = RickMortyPersonListView()
        view.backgroundColor = .systemGray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Rick Morty Person"
    }
    
    override func loadView() {
        self.view = viewRickMortyPersonList
    }
}
