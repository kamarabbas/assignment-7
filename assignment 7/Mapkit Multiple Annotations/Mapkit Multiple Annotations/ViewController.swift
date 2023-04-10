//
//  ViewController.swift
//  Mapkit Multiple Annotations
//
//  Created by KAMAR ABBAS SAIYAD  on 30/03/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        creatAnnotations(locations: annotationlocations)
    }

    // annotation location(s)
    let annotationlocations = [
        ["title": "Law Garden", "latitude": 23.027374, "longitude": 72.560646],
        ["title": "Maninagar", "latitude": 22.996170, "longitude": 72.599586],
        ["title": "C G Road", "latitude": 23.109131, "longitude": 72.591087],
        ["title": "Vastral", "latitude": 22.995275, "longitude": 72.662987],
        ["title": "Vatva", "latitude": 22.966425, "longitude": 72.615936]
    ]
        
    
    // creat annotation
    // [Dictionary<String, Any>] or [(String: Any)] works for argument type
    func creatAnnotations(locations: [[String : Any]]) {
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude:location["latitude"] as! CLLocationDegrees,                                                  longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(annotations)
        }
   }

}
