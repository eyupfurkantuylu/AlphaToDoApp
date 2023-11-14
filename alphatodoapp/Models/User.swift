//
//  User.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 13.11.2023.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
