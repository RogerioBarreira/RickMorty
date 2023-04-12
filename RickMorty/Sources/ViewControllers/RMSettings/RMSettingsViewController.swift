//
//  RMSettingsViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import UIKit

class RMSettingsViewController: UIViewController {
    
    lazy var viewRMSettings: RMSettingsView = {
        let view = RMSettingsView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
    }
    
    override func loadView() {
        self.view = viewRMSettings
    }
}
