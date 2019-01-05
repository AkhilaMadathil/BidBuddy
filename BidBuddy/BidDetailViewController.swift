//
//  BidDetailViewController.swift
//  BidBuddy
//
//  Created by MAKL on 05/01/19.
//  Copyright © 2019 Akhila. All rights reserved.
//

import UIKit

class BidDetailViewController: UIViewController {

    
    @IBOutlet weak var liveStatus: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        flashBG()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func flashBG(){
        UIView.animate(withDuration: 0.7, animations: {
            self.liveStatus.alpha = 0.0
        })
    }
}
