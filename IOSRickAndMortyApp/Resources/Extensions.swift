//
//  Extensions.swift
//  IOSRickAndMortyApp
//
//  Created by Gokhan Kaya on 5.09.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
