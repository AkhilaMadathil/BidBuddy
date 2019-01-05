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
        self.tableView.register(UINib(nibName: "BidTableViewCell", bundle: nil), forCellReuseIdentifier: "BidTable")
        self.tableView.register(BidTableViewCell.self, forCellReuseIdentifier: "BidTableViewCell")
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
        self.tableView.tableFooterView = UIView()
        self.setupSearchBar()
    }
    
    private func setupSearchBar() {
        navigationItem.title = "Live Bid"
        let searchController = UISearchController(searchResultsController: nil)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchController
    }

    @IBAction func didTapOnBid(_ sender: Any) {
        print("Tapped")
    }
}

extension BidListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BidTable", for: indexPath) as? BidTableViewCell
        cell?.selectionStyle = .none
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "HatchBack"
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.init(name: "CarBid", bundle: Bundle.main).instantiateViewController(withIdentifier: "BidDetailVC") as? BidDetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
