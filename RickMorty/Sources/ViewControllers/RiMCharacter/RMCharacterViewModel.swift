//
//  RMCharacterViewModel.swift
//  RickMorty
//
//  Created by Rogerio Martins on 30/03/23.
//

import Foundation

class RMCharacterViewModel: NSObject {
    
    private var myCharacter: [ResultChar] = []
    private let worker = Worker()
    
    var numberOfRowChar: Int {
        return myCharacter.count
    }
    
    func cellForRowChar(indexPath: IndexPath)-> ResultChar? {
        return myCharacter[indexPath.row]
    }
    
    func requestRMCharacterViewModel(completion: @escaping(Bool)-> Void) {
        worker.workerRMCharacter { [weak self] myCharacter, success in
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
}
