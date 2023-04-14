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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupTitleNav()
    }
    
    func setupTitleNav() {
        addSubview(titleNav)
        NSLayoutConstraint.activate([
            titleNav.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            titleNav.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleNav.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }
}
