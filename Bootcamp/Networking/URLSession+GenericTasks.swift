//
//  URLSession+GenericTasks.swift
//  Bootcamp
//
//  Created by everis on 26/11/21.
//

import Foundation

enum TaskErrors: Error {
    case invalidURL
    case invalidData
}

extension URLSession {
    func fetch<T: Codable>(url: URL?,
                           expecting: T.Type,
                           completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = url else {
            completion(.failure(TaskErrors.invalidURL))
            return
        }
        
        let task = dataTask(with: url, completionHandler: { data, _, error in
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.failure(TaskErrors.invalidData))
                }
                return
            }
            
            do {
                let result = try JSONDecoder().decode(expecting, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        })
        task.resume()
    }
}
