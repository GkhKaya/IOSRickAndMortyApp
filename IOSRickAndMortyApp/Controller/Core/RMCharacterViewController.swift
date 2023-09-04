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
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print ("Page result count:" + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }

    }
    

   

}
