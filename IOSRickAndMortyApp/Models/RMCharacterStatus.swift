//
//  RMCharacterStatus.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 28.08.2023.
//

import Foundation
enum RMCharacterStatus : String,Codable{
    case alive  = "Alive"
    case dead = "Dead"
    case unknown = "Unknown"
}
