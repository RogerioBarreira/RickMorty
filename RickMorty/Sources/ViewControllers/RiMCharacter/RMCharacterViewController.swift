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
        viewModelRMCharacterViewModel.loadRequest = true
        viewRMCharacter.loading.startAnimating()
        viewModelRMCharacterViewModel.requestRMCharacterViewModel { [weak self] success in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.viewRMCharacter.loading.stopAnimating()
            }
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
        coordinator.startRMDetailCharacter(detail: viewModelRMCharacterViewModel.cellForRowChar(indexPath: indexPath))
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if indexPath.row == viewModelRMCharacterViewModel.addCharacter.count - 8 && indexPath.row != viewModelRMCharacterViewModel.totalChar {
            
            viewModelRMCharacterViewModel.addPage()
            viewRMCharacter.loading.startAnimating()
            viewModelRMCharacterViewModel.requestAddRMCharacterViewModel { [weak self] success in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    self.viewRMCharacter.loading.stopAnimating()
                }
                if success {
                    self.viewModelRMCharacterViewModel.loadRequest = false
                    self.viewRMCharacter.rmTableView.reloadData()
                }
                print(self.viewModelRMCharacterViewModel.currentPage)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
