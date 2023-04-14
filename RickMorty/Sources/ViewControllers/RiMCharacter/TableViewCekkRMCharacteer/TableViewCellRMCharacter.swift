//
//  TableViewCellRMCharacter.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

import UIKit
import Kingfisher

class TableViewCellRMCharacter: UITableViewCell {
    
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
    
    let imageChar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        return image
    }()
    
    let nameChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    let imageStatusChar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        return image
    }()
    
    let statusChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    let especieChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .right
        label.textColor = .label
        return label
    }()
    
    let descripTitleLocationChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Last known location:"
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .left
        label.textColor = .gray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    let lastLocationChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textAlignment = .left
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    let origemChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textAlignment = .left
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    static let identifier = "TableViewCellRMCharacter"

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    func configConstraints() {
        setupBackGroundCell()
        setupImageChar()
        setupNameCharac()
        setupImageStatusChar()
        setupStatusChar()
        setupSpecieChar()
        setupDescrTitleLoc()
        setupLastLoc()
        setupOrigemLoc()
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
    
    func setupImageChar() {
        backGroundCell.addSubview(imageChar)
        NSLayoutConstraint.activate([
            imageChar.topAnchor.constraint(equalTo: backGroundCell.topAnchor),
            imageChar.leadingAnchor.constraint(equalTo: backGroundCell.leadingAnchor),
            imageChar.bottomAnchor.constraint(equalTo: backGroundCell.bottomAnchor),
            imageChar.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    func setupNameCharac() {
        backGroundCell.addSubview(nameChar)
        NSLayoutConstraint.activate([
            nameChar.topAnchor.constraint(equalTo: backGroundCell.topAnchor, constant: 5),
            nameChar.leadingAnchor.constraint(equalTo: imageChar.trailingAnchor, constant: 5),
            nameChar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
    }
    
    func setupImageStatusChar() {
        backGroundCell.addSubview(imageStatusChar)
        NSLayoutConstraint.activate([
            imageStatusChar.topAnchor.constraint(equalTo: nameChar.bottomAnchor),
            imageStatusChar.leadingAnchor.constraint(equalTo: imageChar.trailingAnchor, constant: 5),
        ])
    }
    
    func setupStatusChar() {
        backGroundCell.addSubview(statusChar)
        NSLayoutConstraint.activate([
            statusChar.leadingAnchor.constraint(equalTo: imageStatusChar.trailingAnchor, constant: 5),
            statusChar.centerYAnchor.constraint(equalTo: imageStatusChar.centerYAnchor)
        ])
    }
    
    func setupSpecieChar() {
        backGroundCell.addSubview(especieChar)
        NSLayoutConstraint.activate([
            especieChar.leadingAnchor.constraint(equalTo: statusChar.trailingAnchor, constant: 5),
            especieChar.centerYAnchor.constraint(equalTo: statusChar.centerYAnchor)
        ])
    }
    
    func setupDescrTitleLoc() {
        backGroundCell.addSubview(descripTitleLocationChar)
        NSLayoutConstraint.activate([
            descripTitleLocationChar.topAnchor.constraint(equalTo: imageStatusChar.bottomAnchor, constant: 10),
            descripTitleLocationChar.leadingAnchor.constraint(equalTo: imageChar.trailingAnchor, constant: 5),
            descripTitleLocationChar.trailingAnchor.constraint(equalTo: backGroundCell.trailingAnchor, constant: -5)
        ])
    }
    
    func setupLastLoc() {
        backGroundCell.addSubview(lastLocationChar)
        NSLayoutConstraint.activate([
            lastLocationChar.topAnchor.constraint(equalTo: descripTitleLocationChar.bottomAnchor, constant: 2),
            lastLocationChar.leadingAnchor.constraint(equalTo: imageChar.trailingAnchor, constant: 5),
            lastLocationChar.trailingAnchor.constraint(equalTo: backGroundCell.trailingAnchor, constant: -5)
        ])
    }
    
    func setupOrigemLoc() {
        backGroundCell.addSubview(origemChar)
        NSLayoutConstraint.activate([
            origemChar.bottomAnchor.constraint(equalTo: backGroundCell.bottomAnchor, constant: -5),
            origemChar.leadingAnchor.constraint(equalTo: imageChar.trailingAnchor, constant: 5),
            origemChar.trailingAnchor.constraint(equalTo: backGroundCell.trailingAnchor, constant: -5)
        ])
    }
    
    func setupCell(char: ResultChar?) {
        if let url = URL(string: char?.image ?? "") {
            imageChar.kf.indicatorType = .activity
            imageChar.kf.setImage(with: url)
        } else {
            imageChar.image = nil
        }
        
        nameChar.text = char?.name ?? ""
        statusChar.text = char?.status?.rawValue
        especieChar.text = char?.species?.rawValue
        lastLocationChar.text = char?.location?.name ?? ""
        origemChar.text = char?.origin?.name ?? ""
        
        var image: UIImage?
        var color: UIColor?
        
        switch char?.status?.rawValue {
        case "Alive":
            image = UIImage(systemName: "circle.fill")
            color = UIColor.green
        case "Dead":
            image = UIImage(systemName: "circle.fill")
            color = UIColor.red
        default:
            image = UIImage(systemName: "questionmark.circle")
            color = UIColor.yellow
        }
        
        imageStatusChar.image = image
        imageStatusChar.tintColor = color
    }
}
