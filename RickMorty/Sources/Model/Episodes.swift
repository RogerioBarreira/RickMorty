//
//  Episodes.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let episode = try? JSONDecoder().decode(Episode.self, from: jsonData)

import Foundation

// MARK: - Episode
struct Episode: Codable {
    let info: InfoEp?
    let results: [ResultEp]?
}

// MARK: - InfoEp
struct InfoEp: Codable {
    let count, pages: Int?
    let next: String?
    let prev: String?
}

// MARK: - ResultEp
struct ResultEp: Codable {
    let id: Int?
    let name, airDate, episode: String?
    let characters: [String]?
    let url: String?
    let created: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
}
