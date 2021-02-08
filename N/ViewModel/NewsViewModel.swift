//
//  NewsViewModel.swift
//  N
//
//  Created by Agustian DM on 07/02/21.
//

import Foundation
import UIKit

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    var title: String {
        return news.title ?? ""
    }
    var description: String {
        return news.description ?? ""
    }
    var url: String {
        return news.url ?? ""
    }
    var urlToImage: String {
        return news.urlToImage ?? "https://cdn.pixabay.com/photo/2016/06/02/16/16/newspaper-1431401_960_720.png"
    }
    
}
