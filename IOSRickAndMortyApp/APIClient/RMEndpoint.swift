//
//  RMEndpoint.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 28.08.2023.
//


import Foundation

/// Represents uniqe API ednpoint
@frozen enum RMEndpoint : String{
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}

