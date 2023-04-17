//
//  Locate.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

import Foundation

// MARK: - Location
struct Locations: Codable {
    let info: InfoLoc?
    let results: [ResultLoc]?
}

// MARK: - InfoLoc
struct InfoLoc: Codable {
    let count, pages: Int?
    let next: String?
    let prev: String?
}

// MARK: - ResultLoc
struct ResultLoc: Codable {
    let id: Int?
    let name, type, dimension: String?
    let residents: [String]?
    let url: String?
    let created: String?
}
