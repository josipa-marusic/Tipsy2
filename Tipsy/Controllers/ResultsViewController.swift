//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Josipa Nemčić on 09.02.2023..
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var destResult: Float?
    var destSplit: String?
    var destTip: Float?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = String(format: "%.2f", destResult!)
        settingsLabel.text = "Split between \(destSplit!) people, with \(String(format:"%.0f", destTip!*100))% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
