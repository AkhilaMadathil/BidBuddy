//
//  BidTableViewCell.swift
//  BidBuddy
//
//  Created by Akshay Bhat on 05/01/19.
//  Copyright © 2019 Akhila. All rights reserved.
//

import UIKit

class BidTableViewCell: UITableViewCell {

    @IBOutlet weak var bidButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bidButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        bidButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        bidButton.layer.shadowOpacity = 1.0
        bidButton.layer.shadowRadius = 0.0
        bidButton.layer.masksToBounds = false
        bidButton.layer.cornerRadius = 4.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
