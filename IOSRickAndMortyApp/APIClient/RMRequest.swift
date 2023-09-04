//
//  RMRequest.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 28.08.2023.
//

import Foundation


/// Object that represents a single API call
final class RMRequest{
    /// API Constant
    private struct Constants {
        static let baseUrl  = "https://rickandmortyapi.com/api"
    }

    /// Desired endpoint
    private let endoint  : RMEndpoint
    
    /// path component for API, if any
    private let pathComponents: [String]
    
    /// query argument for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for api request in string format
    private var urlString : String{
        var string = Constants.baseUrl
        string += "/"
        string += endoint.rawValue
        
        if !pathComponents.isEmpty{
            string += "/"
            pathComponents.forEach({
                string += "\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator:  "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL?{
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endoint: target endpoint
    ///   - pathComponents: collection of path components
    ///   - queryParameters: colection of query paramaters
    init(endoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endoint = endoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest{
    static let listCharactersRequest = RMRequest(endoint: .character)
}
