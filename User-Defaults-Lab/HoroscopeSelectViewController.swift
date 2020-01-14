//
//  HoroscopeSelectViewController.swift
//  User-Defaults-Lab
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class HoroscopeSelectViewController: UITableViewController {
    
    @IBOutlet var starSignLabels: [UILabel]!
    
    var horoscope: Horoscope? {
        didSet {
            DispatchQueue.main.async {
                if let userHoroscope = self.horoscope {
                    UserHoroscope.shared.updateSelectedHoroscope(horoscope: userHoroscope)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let starSign = starSignLabels[indexPath.row].text?.lowercased() ?? ""
        print(starSign)
        
        HoroscopeAPIClient.fetchHoroscope(sign: starSign) { [weak self] (result) in
            switch result {
            case .failure(let appError):
                DispatchQueue.main.async {
                    self?.showAlert(title: "Error: Couldn't retrieve horoscope", message: "\(appError)")
                }
            case .success(let horoscope):
                self?.horoscope = horoscope
            }
        }
        }
    
}
