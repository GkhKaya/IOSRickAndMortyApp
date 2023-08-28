//
//  RMService.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 28.08.2023.
//

import Foundation


/// Primary API service object to get RM data
final class RMService{
    
    
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init(){}
    
    /// Send RM API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
