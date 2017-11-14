//
//  MapViewController.swift
//  Konverter
//
//  Created by Mirza Durakovic on 14/11/2017.
//  Copyright © 2017 Mirza Durakovic. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: @IBAction
    @IBAction func segmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            map.mapType = .standard
        case 1:
            map.mapType = .satellite
        case 2:
            map.mapType = .hybrid
        default:
            break
        }
    }
    
    // MARK: @IBOutlet
    @IBOutlet weak var map: MKMapView!
    
    // MARK: ViewController func
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1 viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2 viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3 viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    print("4 viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("5 viewDidDisappear")
    }
}
