//
//  InterestingPlace.swift
//  InterestingPlaces
//
//  Created by Elias Gabriel dos Santos Correa on 08/07/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import Foundation
import CoreLocation

class InterestingPlace {
    let location: CLLocation
    let name: String
    let imageName: String
    
    init(latitude: Double, longitude: Double, name: String, imageName: String) {
        self.location = CLLocation(latitude: latitude, longitude: longitude)
        self.name = name
        self.imageName = imageName
    }
}
