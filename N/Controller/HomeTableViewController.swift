//
//  HomeTableViewController.swift
//  N
//
//  Created by Agustian DM on 08/02/21.
//

import UIKit
import SafariServices

class HomeTableViewController: UITableViewController {
    
    //MARK: - Properties
    var allNews = NewsListViewModel()
    var filteredNews = NewsListViewModel()
    

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadNews()
    }
    
    //MARK: - Download ListNews
    func downloadNews() {
        allNews.getNews { (_) in
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allNews.newsVM.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        let news = allNews.newsVM[indexPath.row]
        cell.configure(newsVM: news)
        return cell
    }
    
    //MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let news = allNews.newsVM[indexPath.row]
        guard let url = URL(string: news.url) else {
            return
        }
        
        let config = SFSafariViewController.Configuration()
        let safariVC = SFSafariViewController(url: url, configuration: config)
        safariVC.modalPresentationStyle = .fullScreen
        present(safariVC, animated: true, completion: nil)
    }
}

