//
//  API.swift
//  CinemaHub
//
//  Created by Tran Tuyen on 9/3/18.
//  Copyright © 2018 ninjaKID. All rights reserved.
//

import Foundation
import Moya

class API {
    
    static let apiKey = "71485e4b5f8dfaff0e1a06606ae19587"
    static let provider = MoyaProvider<MovieApi>()
    
    static func getNewMovies(page: Int, completion: @escaping ([Movie])->()) {
        provider.request(.newMovies(page: page)) { result in
            switch result {
            case let .success(response):
                do {
                    let results = try JSONDecoder().decode(APIResults.self, from: response.data)
                    completion(results.movies)
                } catch let err{
                    print(err)
                }
            case let .failure(error):
                print(error)
            }
            
        }
    }
    
    static func getTopRated(page: Int, completion: @escaping ([Movie?])->()) {
        provider.request(.topRated(page: <#T##Int#>)) { result in
            switch result {
            case let .success(response):
                do {
                    let results = try JSONDecoder().decode(APIResults.self, from: response.data)
                    completion(results.movies)
                } catch let err {
                    print(err)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
    
    
}
