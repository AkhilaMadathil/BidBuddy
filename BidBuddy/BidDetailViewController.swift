//
//  BidDetailViewController.swift
//  BidBuddy
//
//  Created by MAKL on 05/01/19.
//  Copyright © 2019 Akhila. All rights reserved.
//

import UIKit

class BidDetailViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var bidTextField: UITextField!
    @IBOutlet weak var liveStatus: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flashBG()
        bidTextField.layer.cornerRadius = 6.0
        liveStatus.layer.cornerRadius = 6.0
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
        UIView.animate(withDuration: (1.0), delay: 0.0, options: .allowAnimatedContent, animations: {
            self.liveStatus.alpha = 0
        }, completion: { finished in
            UIView.animate(withDuration: (1.0), animations: {
                self.liveStatus.alpha = 1
                self.flashBG()
            })
        })
    }
}
