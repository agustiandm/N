//
//  News.swift
//  N
//
//  Created by Agustian DM on 07/02/21.
//

import Foundation

struct News: Decodable {
    let author : String?
    let description: String?
    let title: String?
    let urlToImage: String?
    let url: String?
}

struct ResponseAPI: Decodable {
    let status: String
    let totalResults: Int
    let articles : [News]
}
