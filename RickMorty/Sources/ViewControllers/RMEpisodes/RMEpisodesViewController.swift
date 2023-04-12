//
//  RMEpisodesViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import UIKit

class RMEpisodesViewController: UIViewController {
    
    lazy var viewRMEpisodes: RMEpisodesView = {
        let view = RMEpisodesView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Episodes"
    }
    
    override func loadView() {
        self.view = viewRMEpisodes
    }
}
