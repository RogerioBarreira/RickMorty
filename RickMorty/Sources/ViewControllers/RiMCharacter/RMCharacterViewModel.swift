//
//  RMCharacterViewModel.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import Foundation

class RMCharacterViewModel: NSObject {
    
    private var myCharacter: [Result] = []
    private let worker = Worker()
    var currentPage = 1
    var totalChar = 0
    var loadRequest = false
    
    var addCharacter: [Result] {
        return myCharacter
    }
    
    var numberOfRowChar: Int {
        return myCharacter.count
    }
    
    func addPage() {
        return currentPage = currentPage + 1
    }
    
    func cellForRowChar(indexPath: IndexPath)-> Result? {
        return myCharacter[indexPath.row]
    }
    
    func requestRMCharacterViewModel(completion: @escaping (Bool)-> Void) {
        worker.workerRMCharacter(page: currentPage) { [weak self] myCharacter, success in
            guard let self = self else { return }
            switch success {
            case true:
                self.myCharacter = myCharacter?.results ?? []
                completion(true)
            case false:
                completion(false)
            }
        }
    }
    
    func requestAddRMCharacterViewModel(completion: @escaping (Bool)-> Void) {
        loadRequest = true
        worker.workerRMCharacter(page: currentPage) { [weak self] newCharacter, success in
            guard let self = self else { return }
            if success {
                if let newChar = newCharacter {
                    self.myCharacter.append(contentsOf: newChar.results ?? [])
                    self.totalChar = newChar.info?.count ?? 0
                }
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
