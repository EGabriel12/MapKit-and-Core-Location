//
//  InterestingPlaceView.swift
//  InterestingPlaces
//
//  Created by Elias Gabriel dos Santos Correa on 09/07/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit
import MapKit

class InterestingPlaceView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            if let placeAnnotation = newValue as? InterestingPlace {
                glyphText = "😀"
                markerTintColor = UIColor(displayP3Red: 0.082, green: 0.518, blue: 0.263, alpha: 1.0)
                if placeAnnotation.sponsored {
                    displayPriority = .defaultHigh
                }
                canShowCallout = true
                clusteringIdentifier = MKMapViewDefaultClusterAnnotationViewReuseIdentifier
                let image = UIImage(named: placeAnnotation.imageName)
                let imageView = UIImageView(image: image)
                detailCalloutAccessoryView = imageView
            }
        }
    }
}
