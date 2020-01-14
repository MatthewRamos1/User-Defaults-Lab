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
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        nameTextField.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
    }
    
    func updateUI() {
        guard let todaysHoroscope = UserHoroscope.shared.getSelectedHoroscope(), let userName = UserHoroscope.shared.getUserName() else {
            horoscopeText.text = "Enter name and select star sign."
            return
        }
        horoscopeText.text = userName + ":    " + todaysHoroscope
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        UserHoroscope.shared.updateUserName(name: textField.text ?? "User")
        updateUI()
        return true
    }
}

