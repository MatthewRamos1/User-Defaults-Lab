//
//  ViewController.swift
//  User-Defaults-Lab
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var horoscopeText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    func updateUI() {
        let todaysHoroscope = UserHoroscope.shared.getSelectedHoroscope()
        horoscopeText.text = todaysHoroscope
    }

}

