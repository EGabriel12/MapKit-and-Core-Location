//
//  ClusterView.swift
//  InterestingPlaces
//
//  Created by Elias Gabriel dos Santos Correa on 09/07/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit
import MapKit

class ClusterView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            markerTintColor = UIColor.brown
        }
    }
}
