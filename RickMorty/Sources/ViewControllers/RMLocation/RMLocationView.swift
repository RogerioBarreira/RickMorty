//
//  RMLocationView.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import UIKit

class RMLocationView: UIView {
    
    let titleNav: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Location"
        label.font = .systemFont(ofSize: 35, weight: .bold)
        return label
    }()
    
    let locTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    let loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.translatesAutoresizingMaskIntoConstraints = false
        load.color = .label
        load.backgroundColor = .clear
        load.frame.size = CGSize(width: 50, height: 50)
        let scale = CGAffineTransform(scaleX: 3, y: 3)
        load.transform = scale
        return load
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupTitleNav()
        setupTableView()
        setupLoad()
    }
    
    func setupTitleNav() {
        addSubview(titleNav)
        NSLayoutConstraint.activate([
            titleNav.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            titleNav.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleNav.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }
    
    func setupTableView() {
        addSubview(locTableView)
        NSLayoutConstraint.activate([
            locTableView.topAnchor.constraint(equalTo: titleNav.bottomAnchor),
            locTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            locTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            locTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupLoad() {
        addSubview(loading)
        NSLayoutConstraint.activate([
            loading.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
