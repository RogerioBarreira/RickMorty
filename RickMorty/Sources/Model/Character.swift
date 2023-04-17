//
//  Character.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

import Foundation
import UIKit

// MARK: - Character
struct Character: Codable {
    let info: InfoChar?
    let results: [ResultChar]?
}

// MARK: - InfoChar
struct InfoChar: Codable {
    let count, pages: Int?
    let next: String?
    let prev: String?
}

// MARK: - ResultChar
struct ResultChar: Codable {
    let id: Int?
    let name: String?
    let status: Status?
    let species: Species?
    let type: String?
    let gender: Gender?
    let origin, location: LocationChar?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

// MARK: - LocationChar
struct LocationChar: Codable {
    let name: String?
    let url: String?
}

enum Species: String, Codable {
    case alien = "Alien"
    case human = "Human"
}

enum Status: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

extension Status {
    var image: UIImage? {
        switch self {
        case .alive:
            return UIImage(systemName: "circle.fill")?.withTintColor(.green, renderingMode: .alwaysOriginal)
        case .dead:
            return UIImage(systemName: "circle.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        case .unknown:
            return UIImage(systemName: "questionmark.circle")?.withTintColor(.yellow, renderingMode: .alwaysOriginal)
        }
    }
}
