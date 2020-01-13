//
//  HoroscopeData.swift
//  User-Defaults-Lab
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

struct Horoscope: Decodable{
    let sunsign: String
    let date: String
    let horoscope: String
    let meta: Meta
}

struct Meta: Decodable{
    let mood: String
    let keywords: String
    let intensity: String
}
