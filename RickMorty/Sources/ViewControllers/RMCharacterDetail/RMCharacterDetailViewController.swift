//
//  RMCharacterDetailViewController.swift
//  RickMorty
//
//  Created by Rogerio Martins on 14/04/23.
//

import Foundation
import UIKit
import Kingfisher

class RMCharacterDetailViewController: UIViewController {
    
    lazy var viewRMCharacterDetail: RMCharacerDetailView = {
        let view = RMCharacerDetailView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let viewModelRMCharDetail = RMCharacterDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "RMDetail"
        self.title = viewModelRMCharDetail.nameChar
        setupUI()
    }
    
    override func loadView() {
        self.view = viewRMCharacterDetail
    }
    
    func setupUI() {
        setupImageChar()
        setupNameChar()
        setupStatusChar()
        setupImageStatusChar()
        setupSpecieChar()
        setupLocChar()
        setupOrigemLoc()
    }
    
    func setupImageChar() {
        viewRMCharacterDetail.imageChar.kf.setImage(with: viewModelRMCharDetail.imageChar)
    }
    
    func setupNameChar() {
        viewRMCharacterDetail.nameChar.text = viewModelRMCharDetail.nameChar
    }
    
    func setupImageStatusChar() {
        viewRMCharacterDetail.imageStatusChar.image = viewModelRMCharDetail.imageStatus
    }
    
    func setupStatusChar() {
        viewRMCharacterDetail.statusChar.text = viewModelRMCharDetail.statusCharDetail
    }
    
    func setupSpecieChar() {
        viewRMCharacterDetail.especieChar.text = viewModelRMCharDetail.specieChar
    }
    
    func setupLocChar() {
        viewRMCharacterDetail.lastLocationChar.text = viewModelRMCharDetail.descrLocRMChar
    }
    
    func setupOrigemLoc() {
        viewRMCharacterDetail.origemChar.text = viewModelRMCharDetail.origiemChar
    }
}
