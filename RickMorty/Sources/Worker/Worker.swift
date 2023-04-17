//
//  Worker.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

import Foundation

class Worker: NSObject {
    private var myLocation: Locations?
    private var myCharacter: Character?
    private let network = Network()
    
    func workerRMCharacter(completion: @escaping (Character?,Bool)-> Void) {
        
        network.network(urlString: "https://rickandmortyapi.com/api/character", method: .get, custom: Character.self) { [weak self] myCharacter, success in
            guard let self = self else { return }
            switch success {
            case true:
                self.myCharacter = myCharacter
                completion(myCharacter,true)
            case false:
                completion(nil,false)
            }
        }
    }
    
    func workerRMLocation(completion: @escaping (Locations?,Bool)-> Void) {
        network.network(urlString: "https://rickandmortyapi.com/api/location", method: .get, custom: Locations.self) { [weak self] myLocation, success in
            guard let self = self else { return }
            switch success {
            case true:
                self.myLocation = myLocation
                completion(myLocation,true)
            case false:
                completion(nil,false)
            }
        }
    }
}
