//
//  Person.swift
//  NamesToFaces
//
//  Created by Yuga Samuel on 14/09/23.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}
