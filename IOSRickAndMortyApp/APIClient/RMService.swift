//
//  RMService.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 28.08.2023.
//

import Foundation


/// Primary API service object to get RM data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init() { }
    /// Send RM API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - tpye: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: (Result<String, Error>) -> Void
    ) {
         
    }
}
