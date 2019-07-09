//
//  InterestingPlace.swift
//  InterestingPlaces
//
//  Created by Elias Gabriel dos Santos Correa on 08/07/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class InterestingPlace: NSObject {
    let location: CLLocation
    let name: String
    let imageName: String
    let sponsored: Bool
    
    init(latitude: Double, longitude: Double, name: String, imageName: String, sponsored: Bool) {
        self.location = CLLocation(latitude: latitude, longitude: longitude)
        self.name = name
        self.imageName = imageName
        self.sponsored = sponsored
    }
}

extension InterestingPlace: MKAnnotation { // Necessário para adicionar annotations no mapa
    var coordinate: CLLocationCoordinate2D {
        get {
            return location.coordinate
        }
    }
    
    var title: String? {
        get {
            return name
        }
    }
}
