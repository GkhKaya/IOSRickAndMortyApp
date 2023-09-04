//
//  GetCharacterResponse.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 30.08.2023.
//

import Foundation

struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMChracter]
}
