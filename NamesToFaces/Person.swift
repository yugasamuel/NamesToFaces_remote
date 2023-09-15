//
//  Person.swift
//  NamesToFaces
//
//  Created by Yuga Samuel on 14/09/23.
//

import UIKit

class Person: NSObject, Codable, NSSecureCoding {
    var name: String
    var image: String
    
    static var supportsSecureCoding: Bool {
        return true
    }
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image = aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }

}
