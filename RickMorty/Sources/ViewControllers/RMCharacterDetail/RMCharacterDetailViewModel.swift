//
//  RMCharacterDetailViewModel.swift
//  RickMorty
//
//  Created by Rogerio Martins on 15/04/23.
//

import Foundation
import UIKit

class RMCharacterDetailViewModel: NSObject {
    
    private var myDetailChar: Result?
    
    var imageChar: URL? {
        return URL(string: myDetailChar?.image ?? "")
    }
    
    var nameChar: String {
        return myDetailChar?.name ?? ""
    }
    
    var imageStatus: UIImage?{
        switch myDetailChar?.status?.rawValue {
        case "Alive":
            return UIImage(systemName: "circle.fill")?.withTintColor(.green, renderingMode: .alwaysOriginal)
        case "Dead":
            return UIImage(systemName: "circle.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        default:
            return UIImage(systemName: "questionmark.circle")?.withTintColor(.yellow, renderingMode: .alwaysOriginal)
        }
    }
    
    var specieChar: String {
        return myDetailChar?.species ?? ""
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
    
    func detailCharaceter(detail: Result?) {
        self.myDetailChar = detail
    }
}
