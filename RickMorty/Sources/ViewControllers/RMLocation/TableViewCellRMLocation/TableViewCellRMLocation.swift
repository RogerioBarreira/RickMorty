//
//  TableViewCellRMLocation.swift
//  RickMorty
//
//  Created by Rogerio Martins on 15/04/23.
//

import UIKit

class TableViewCellRMLocation: UITableViewCell {
    
    let backGroundCell: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cinzaRMBackGroud
        view.layer.cornerRadius = 15
        view.layer.shadowColor = .cinzaRMShadow
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 3, height: 8)
        view.layer.shadowRadius = 3
        return view
    }()
    
    let nameLoc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    static let identifier = "TableViewCellRMLocation"
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    func configConstraints() {
        setupBackGroundCell()
        setupNameLoc()
    }
    
    func setupBackGroundCell() {
        contentView.addSubview(backGroundCell)
        NSLayoutConstraint.activate([
            backGroundCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            backGroundCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            backGroundCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            backGroundCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    
    func setupNameLoc() {
        backGroundCell.addSubview(nameLoc)
        NSLayoutConstraint.activate([
            nameLoc.topAnchor.constraint(equalTo: backGroundCell.topAnchor, constant: 5),
            nameLoc.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            nameLoc.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
    }
    
    func setupCell(loc: ResultLoc?) {
        nameLoc.text = loc?.name ?? ""
    }
}
