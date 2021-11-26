//
//  Superhero.swift
//  Bootcamp
//
//  Created by everis on 26/11/21.
//

import Foundation

struct Superhero: Codable {
    var id: Int
    var name: String
    var thumbnail: Thumbnail
}

struct Thumbnail: Codable {
    var path: String
    var imageExtension: String
    
    enum CodingKeys: String, CodingKey {
        case path
        case imageExtension = "extension"
    }
}
