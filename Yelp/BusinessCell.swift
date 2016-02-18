//
//  BusinessCell.swift
//  Yelp
//
//  Created by Faisal Abu Jabal on 2/17/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    
    @IBOutlet weak var businessThumbnailImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var businessAddressLabel: UILabel!
    
    var business: Business! {
        didSet {
            businessNameLabel.text = business.name
            businessThumbnailImageView.setImageWithURL(business.imageURL!)
            categoryLabel.text = business.categories
            businessAddressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingsImageView.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        businessThumbnailImageView.layer.cornerRadius = 3
        businessThumbnailImageView.clipsToBounds = true
//        businessNameLabel.preferredMaxLayoutWidth = businessNameLabel.frame.size.width
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        businessNameLabel.preferredMaxLayoutWidth = businessNameLabel.frame.size.width
//    }

    

}
