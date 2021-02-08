//
//  NewsListViewModel.swift
//  N
//
//  Created by Agustian DM on 08/02/21.
//

import Foundation

class NewsListViewModel {
    
    var newsVM = [NewsViewModel]()
    
    func getNews(completion: @escaping([NewsViewModel]) -> Void) {
        NetworkManager.shared.getNews { (news) in
            guard let news = news else {return}
            let newsVM = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                self.newsVM = newsVM
                completion(newsVM)
            }
        }
    }
}
