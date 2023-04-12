//
//  RMLocationViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import UIKit

class RMLocationViewController: UIViewController {
    
    lazy var viewRMLocation: RMLocationView = {
        let view = RMLocationView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Location"
    }
    
    override func loadView() {
        self.view = viewRMLocation
    }
}
