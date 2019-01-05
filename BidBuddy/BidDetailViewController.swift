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
    @IBOutlet weak var countDown: UILabel!
    var countdownTimer: Timer!
    var totalTime = 60

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
        flashBG()
        startTimer()
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
    
    func startTimer() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        countDown.text = timeFormatted(totalTime)
      // print("timerLabel.text ----- \(timeFormatted(totalTime))")
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let hours: Int = totalSeconds / 3600
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}
