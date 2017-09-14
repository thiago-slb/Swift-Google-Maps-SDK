//
//  ViewController.swift
//  Google Maps
//
//  Created by Thiago Lovatine on 14/09/17.
//  Copyright © 2017 Thiago Lovatine. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreGraphics

class ViewController: UIViewController {

    var mapView: GMSMapView!
    
    @IBOutlet weak var mapViewHolder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 23.885942, longitude: 45.079162, zoom: 5.1)
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 0, width: mapViewHolder.frame.width, height: mapViewHolder.frame.height), camera: camera)
        
        let marker = GMSMarker()
        marker.position = camera.target
        marker.snippet = "Hello World"
        marker.appearAnimation = GMSMarkerAnimation.pop
        marker.map = mapView
        
        mapViewHolder.addSubview(mapView)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

