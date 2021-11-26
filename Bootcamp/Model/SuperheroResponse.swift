//
//  SuperheroResponse.swift
//  Bootcamp
//
//  Created by everis on 26/11/21.
//

import Foundation

struct SuperheroResponse: Codable {
    var code: Int
    var status: String
    var data: DataResponse
}

struct DataResponse: Codable {
    var total: Int
    var results: [Superhero]
}
