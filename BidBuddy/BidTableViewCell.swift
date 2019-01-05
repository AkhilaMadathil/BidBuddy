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
    @IBOutlet weak var carimage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    
    //dummy data
    var carNames = ["Swift Desire", "Baleno", "Eco sport", "Indica","Swift Desire", "Baleno", "Eco sport", "Indica"]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bidButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        bidButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        bidButton.layer.shadowOpacity = 1.0
        bidButton.layer.shadowRadius = 0.0
        bidButton.layer.masksToBounds = false
        bidButton.layer.cornerRadius = 5.0
        bidButton.addTarget(self, action: #selector(self.holdDown(sender:)), for: .touchDown)
        bidButton.addTarget(self, action: #selector(holdRelease(sender:)), for: .touchUpInside)
    }
    
    @objc func holdDown(sender:UIButton)
    {
        bidButton.alpha = 0.5
    }
    
    @objc func holdRelease(sender:UIButton)
    {
        bidButton.alpha = 1.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(indexPath: IndexPath) {
        imageView?.contentMode = .scaleAspectFit
        imageView?.clipsToBounds = true
        carName.text = carNames[indexPath.row]
    }
}

