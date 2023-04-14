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
    
    let viewModelRMCharacterViewModel = RMCharacterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewRMCharacter
    }
    
    func setupTableView() {
        viewRMCharacter.rmTableView.delegate = self
        viewRMCharacter.rmTableView.dataSource = self
        viewRMCharacter.rmTableView.register(TableViewCellRMCharacter.self, forCellReuseIdentifier: TableViewCellRMCharacter.identifier)
    }
    
    func setupRequest() {
        viewRMCharacter.loading.startAnimating()
        viewModelRMCharacterViewModel.requestRMCharacterViewModel { [weak self] success in
            guard let self = self else { return }
            self.viewRMCharacter.loading.stopAnimating()
            switch success {
            case true:
                self.viewRMCharacter.rmTableView.reloadData()
            case false:
                print("Error Request Characters")
            }
        }
    }
}

extension RMCharacterViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelRMCharacterViewModel.numberOfRowChar
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = viewRMCharacter.rmTableView.dequeueReusableCell(withIdentifier: TableViewCellRMCharacter.identifier, for: indexPath) as? TableViewCellRMCharacter {
            cell.setupCell(char: viewModelRMCharacterViewModel.cellForRowChar(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startRMDetailCharacter()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
