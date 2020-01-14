//
//  SelectedHoroscope.swift
//  User-Defaults-Lab
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

class UserHoroscope {
    private init () {}
    private let standard = UserDefaults.standard
    static let shared = UserHoroscope()
    
    struct SavedHoroscope {
        static let horoscope = "Horoscope"
        static let userName = "Name"
    }
    
    func updateSelectedHoroscope (horoscope: Horoscope) {
        standard.set(horoscope.horoscope, forKey: SavedHoroscope.horoscope )
    }
    
    func getSelectedHoroscope () -> String? {
        guard let selectedHoroscope = UserDefaults.standard.object(forKey: SavedHoroscope.horoscope) as? String else {
            return nil
        }
        return selectedHoroscope
    }
    
    func updateUserName (name: String) {
        standard.set(name, forKey: SavedHoroscope.userName)
    }
    
    func getUserName () -> String? {
        guard let userName = UserDefaults.standard.object(forKey: SavedHoroscope.userName) as? String else {
            return nil
        }
        return userName
    }
    
}
