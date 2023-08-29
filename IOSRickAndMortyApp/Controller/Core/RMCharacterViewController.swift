//
//  RMCharacterViewController.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 26.08.2023.
//

import UIKit

/// Controller to show and search for characters

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endoint: .character,
            queryParameters: [URLQueryItem(name: "name", value: "rick"),
                             URLQueryItem(name: "status", value: "alive")]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMChracter.self) { result in
            
        }

    }
    

   

}
