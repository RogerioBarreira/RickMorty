//
//  RMCharacerDetailView.swift
//  RickMorty
//
//  Created by Rogerio Martins on 15/04/23.
//

import Foundation
import UIKit

class RMCharacerDetailView: UIView {
    
    let backgroundImage: UIView = {
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
        label.font = .systemFont(ofSize: 35, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .label
        return label
    }()
    
    let imageStatusChar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let especieChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .right
        label.textColor = .label
        return label
    }()
    
    let statusChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .left
        label.textColor = .label
        return label
    }()
    
    let descripTitleLocationChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Last known location:"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    let lastLocationChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textAlignment = .left
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    let origemChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textAlignment = .left
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        setupBackgroundImage()
        setupImageChar()
        setupNameCharac()
        setupStatusChar()
        setupImageStatusChar()
        setupSpecieChar()
        setupImageStatusChar()
        setupDescrTitleLoc()
        setupLastLoc()
        setupOrigemLoc()
    }
    
    func setupBackgroundImage() {
        addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backgroundImage.heightAnchor.constraint(equalToConstant: 400),
        ])
    }
    
    func setupImageChar() {
        backgroundImage.addSubview(imageChar)
        NSLayoutConstraint.activate([
            imageChar.topAnchor.constraint(equalTo: backgroundImage.topAnchor),
            imageChar.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor),
            imageChar.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor),
            imageChar.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor)
        ])
    }
    
    func setupNameCharac() {
        addSubview(nameChar)
        NSLayoutConstraint.activate([
            nameChar.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: 20),
            nameChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            nameChar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
    
    func setupStatusChar() {
        addSubview(statusChar)
        NSLayoutConstraint.activate([
            statusChar.topAnchor.constraint(equalTo: nameChar.bottomAnchor, constant: 10),
            statusChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        ])
    }
    
    func setupImageStatusChar() {
        addSubview(imageStatusChar)
        NSLayoutConstraint.activate([
            imageStatusChar.centerYAnchor.constraint(equalTo: statusChar.centerYAnchor),
            imageStatusChar.leadingAnchor.constraint(equalTo: statusChar.trailingAnchor, constant: 10),
        ])
    }
    
    func setupSpecieChar() {
        addSubview(especieChar)
        NSLayoutConstraint.activate([
            especieChar.centerYAnchor.constraint(equalTo: imageStatusChar.centerYAnchor),
            especieChar.leadingAnchor.constraint(equalTo: imageStatusChar.trailingAnchor, constant: 10),
        ])
    }
    
    func setupDescrTitleLoc() {
        addSubview(descripTitleLocationChar)
        NSLayoutConstraint.activate([
            descripTitleLocationChar.topAnchor.constraint(equalTo: especieChar.bottomAnchor, constant: 10),
            descripTitleLocationChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descripTitleLocationChar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
    
    func setupLastLoc() {
        addSubview(lastLocationChar)
        NSLayoutConstraint.activate([
            lastLocationChar.topAnchor.constraint(equalTo: descripTitleLocationChar.bottomAnchor, constant: 10),
            lastLocationChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            lastLocationChar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
    
    func setupOrigemLoc() {
        addSubview(origemChar)
        NSLayoutConstraint.activate([
            origemChar.topAnchor.constraint(equalTo: lastLocationChar.bottomAnchor, constant: 10),
            origemChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            origemChar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
}
