//
//  Location.swift
//  ToDo
//
//  Created by Thiago Garcia on 18/04/18.
//  Copyright © 2018 iGarcia. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
