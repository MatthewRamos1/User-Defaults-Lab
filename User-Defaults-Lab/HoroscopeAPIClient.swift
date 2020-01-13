//
//  HoroscopeAPIClient.swift
//  User-Defaults-Lab
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation
import NetworkHelper

struct HoroscopeAPIClient {
static func fetchHoroscope (sign: String, completion: @escaping (Result<Horoscope,AppError>) -> ()) {
    
    let horoscopeEndPoint = "http://sandipbgt.com/theastrologer/api/horoscope/\(sign)/today"
    
    guard let url = URL(string: horoscopeEndPoint) else {
        completion(.failure(.badURL(horoscopeEndPoint)))
        return
    }
    
    let request = URLRequest(url: url)
    
    NetworkHelper.shared.performDataTask(with: request) { (result) in
        switch result {
        case .failure(let appError):
            completion(.failure(.networkClientError(appError)))
        case .success(let data):
            do {
                let horoscope = try JSONDecoder().decode(Horoscope.self, from: data)
                completion(.success(horoscope))
            } catch {
                completion(.failure(.decodingError(error)))
            }
        }
    }
}
}
