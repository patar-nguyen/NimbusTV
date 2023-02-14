//
//  NetworkManager.swift
//  NimbusTV
//
//  Created by Patrick Nguyen on 2023-02-09.
//

import Foundation

struct Constants {
    static let api_key = "c3b991c6133175f71e8754c2bc9bec61"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedToGetData
}

class NetworkManager {
    static let shared = NetworkManager()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string:"\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.api_key)") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                //converts json data so we can use it
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
