//
//  MapViewController.swift
//  InterestingPlaces
//
//  Created by Elias Gabriel dos Santos Correa on 08/07/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var place: InterestingPlace?
    
    var places: [InterestingPlace] = []
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .standard
        }
        else {
            mapView.mapType = .satellite
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let place = place {
            let regionRadius: CLLocationDistance = 1000.0
            let region = MKCoordinateRegion(center: place.location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
            mapView.setRegion(region, animated: true)
        }
        mapView.addAnnotations(places)
        mapView.delegate = self
    }
    
}

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "InterestingPlace") as? MKMarkerAnnotationView
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "InterestingPlace")
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.glyphText = "😀"
        annotationView?.markerTintColor = UIColor(displayP3Red: 0.082, green: 0.518, blue: 0.263, alpha: 1.0)
        
        return annotationView
    }
}
