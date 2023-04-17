//
//  RMLocationViewModel.swift
//  RickMorty
//
//  Created by Rogerio Martins on 12/04/23.
//

import Foundation

class RMLocationViewModel: NSObject {
    
    private var myLocation: [ResultLoc] = []
    private let worker = Worker()
    
    var numberOfRowRMLoc: Int {
        return myLocation.count
    }
    
    func cellForRowRMLoc(indexPath: IndexPath)-> ResultLoc? {
        return myLocation[indexPath.row]
    }
    
    func requestRMLocationViewModel(completion: @escaping (Bool)-> Void) {
        worker.workerRMLocation { [weak self] myLocation, success in
            guard let self = self else { return }
            switch success {
            case true:
                self.myLocation = myLocation?.results ?? []
                completion(true)
            case false:
                completion(false)
            }
        }
    }
}
