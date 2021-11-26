//
//  MoyaProvider.swift
//  Bootcamp
//
//  Created by everis on 26/11/21.
//

import Foundation
import Moya

enum MarvelService {
    case fetchSuperheroes
    case showSuperhero(id: Int)
}

extension MarvelService: TargetType {
    var baseURL: URL {
        return URL(string: "")!
    }
    
    var path: String {
        switch self {
        case .fetchSuperheroes:
            return "/superheroes"
        case .showSuperhero(let id):
            return "/superheroes/\(id)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .fetchSuperheroes, .showSuperhero:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .showSuperhero(let id):
            return .requestParameters(parameters: ["id":id], encoding: URLEncoding.queryString)
        case .fetchSuperheroes:
            return .requestPlain
        }
    }
    
    var sampleData: Data {
        switch self {
        case .fetchSuperheroes, .showSuperhero:
            return Data()
       
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type":"application/json"]
    }
    
    
}

