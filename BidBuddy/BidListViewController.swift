//
//  BidListViewController.swift
//  BidBuddy
//
//  Created by Akshay Bhat on 05/01/19.
//  Copyright © 2019 Akhila. All rights reserved.
//

import UIKit

class BidListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
        self.tableView.register(UINib(nibName: "BidTableViewCell", bundle: nil), forCellReuseIdentifier: "BidTableView")
        self.tableView.register(BidTableViewCell.self, forCellReuseIdentifier: "BidTableView")
        self.tableView.rowHeight = 44
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
    }

}

extension BidListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BidTableView", for: indexPath) as? BidTableViewCell
        return cell!
    }
    
    
}
