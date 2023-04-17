//
//  RMCharacterDetailViewModel.swift
//  RickMorty
//
//  Created by Rogerio Martins on 15/04/23.
//

import Foundation
import UIKit

class RMCharacterDetailViewModel: NSObject {
    
    private var myDetailChar: ResultChar?
    
    var imageChar: URL? {
        return URL(string: myDetailChar?.image ?? "")
    }
    
    var nameChar: String {
        return myDetailChar?.name ?? ""
    }
    
    var imageStatus: UIImage {
        return myDetailChar?.status?.image ?? UIImage()
        
    }
    
    var specieChar: String {
        return myDetailChar?.species?.rawValue ?? ""
    }
    
    var statusCharDetail: String {
        return myDetailChar?.status?.rawValue ?? ""
    }
    
    var descrLocRMChar: String {
        return myDetailChar?.location?.name ?? ""
    }
    
    var locateChar: String {
        return myDetailChar?.location?.name ?? ""
    }
    
    var origiemChar: String {
        return myDetailChar?.origin?.name ?? ""
    }
    
    func detailCharaceter(detail: ResultChar?) {
        self.myDetailChar = detail
    }
}
