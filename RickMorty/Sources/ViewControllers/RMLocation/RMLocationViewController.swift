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
    
    let viewModelRMLocation = RMLocationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Location"
        setupTableView()
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewRMLocation
    }
    
    func setupTableView() {
        viewRMLocation.locTableView.delegate = self
        viewRMLocation.locTableView.dataSource = self
        viewRMLocation.locTableView.register(TableViewCellRMLocation.self, forCellReuseIdentifier: TableViewCellRMLocation.identifier)
    }
    
    func setupRequest() {
        viewRMLocation.loading.startAnimating()
        viewModelRMLocation.requestRMLocationViewModel { [weak self] success in
            guard let self = self else { return }
            self.viewRMLocation.loading.stopAnimating()
            switch success {
            case true:
                self.viewRMLocation.locTableView.reloadData()
            case false:
                print("Erro")
            }
        }
    }
}

extension RMLocationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelRMLocation.numberOfRowRMLoc
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = viewRMLocation.locTableView.dequeueReusableCell(withIdentifier: TableViewCellRMLocation.identifier, for: indexPath) as? TableViewCellRMLocation {
            
            cell
                .setupCell(loc: viewModelRMLocation.cellForRowRMLoc(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
