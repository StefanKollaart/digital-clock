//
//  ViewController.swift
//  DigitalClock
//
//  Created by Stefan Kollaart on 17-05-17.
//  Copyright © 2017 Stefan Kollaart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var timer = Timer()
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var textColorSeg: UISegmentedControl!
    @IBOutlet weak var backgroundColorSeg: UISegmentedControl!
    @IBOutlet weak var settingsButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        settingsView.isHidden = true
        settingsButton.alpha = 0.25
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer() {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        label.text = timeFormatter.string(from: Date())
    }

    @IBAction func showSettings(_ sender: Any) {
        if settingsView.isHidden == true {
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: [])
            settingsButton.alpha = 1.0
        } else {
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: [])
            settingsButton.alpha = 0.25
        }
    }
    
    @IBAction func textColor(_ sender: Any) {
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
    }
    
    

}

