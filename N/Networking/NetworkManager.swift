//
//  NetworkManager.swift
//  N
//
//  Created by Agustian DM on 07/02/21.
//

import Foundation
import Alamofire

class NetworkManager {
    let imageCache = NSCache<NSString, NSData>()
    
    static let shared = NetworkManager()
    private init () {}
    
    private let baseUrl = "https://newsapi.org/v2/"
    private let topHeadline = "top-headlines?country=us"
    private let key = "802d1c78a40341da9d7a144ee67e4c66"

    func getNews(completion: @escaping ([News]?) -> Void) {
        
        let urlString = "\(baseUrl)\(topHeadline)&apiKey=\(key)"
        
        guard let url = URL(string: urlString) else {
            return
        }
            AF.request(url, method: .get).validate().responseJSON { response in
                
                switch response.result {
                case .success( _):
                    
                    guard let data  = response.data else {return}
                    
                    let newResponseAPI = try? JSONDecoder().decode(ResponseAPI.self, from: data)
                    newResponseAPI == nil ? completion(nil) : completion(newResponseAPI!.articles)
                    
                case .failure(let error):
                    print("DEBUG: \(error.localizedDescription)")
            }
        }
    }
}

