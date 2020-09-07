//
//  BloggerTableViewCell.swift
//  GetBlogger
//
//  Created by Daniyar Agaltsov on 8/31/20.
//  Copyright © 2020 Agaltsov. All rights reserved.
//

import Firebase
import UIKit
import Alamofire

class BloggerTableViewCell: UITableViewCell {
  
    @IBOutlet weak var blogger_profile_pic: UIImageView!
    
    @IBOutlet weak var blogger_username: UILabel!
    
    @IBOutlet weak var blogger_name_age: UILabel!
    
    @IBOutlet weak var blogger_followers: UILabel!
    
    @IBOutlet weak var blogger_stories_price: UILabel!
    
    @IBOutlet weak var blogger_post_price: UILabel!
    
     private var model: BloggerNetworkModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        blogger_profile_pic.layer.cornerRadius = blogger_profile_pic.frame.width / 2
        blogger_profile_pic.layer.masksToBounds = true
    }
    
    func configure(with model: BloggerNetworkModel){
        self.model = model
        blogger_username.text = "@"+model.IGUsername
        blogger_name_age.text = "\(model.name), \(model.age)"
        blogger_stories_price.text = "~ \(model.storiesPrice) тг"
        blogger_post_price.text = "~ \(model.postPrice) тг"
        
        
        
        
    }
    
}
