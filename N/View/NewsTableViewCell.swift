//
//  NewsTableViewCell.swift
//  N
//
//  Created by Agustian DM on 08/02/21.
//

import UIKit
import SDWebImage

class NewsTableViewCell: UITableViewCell {
    
    //MARK: - Properties
//    var newsVM: NewsViewModel? {
//        didSet {
//            if let newsVM = newsVM {
//                
//            }
//        }
//    }
        
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(newsVM: NewsViewModel) {
        titleLabel.text = newsVM.title
        authorLabel.text = newsVM.author
        newsImageView.sd_setImage(with: URL(string: newsVM.urlToImage), completed: nil)
    }

}
