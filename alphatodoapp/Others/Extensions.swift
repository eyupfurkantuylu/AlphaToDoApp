//
//  Extensions.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 14.11.2023.
//

import Foundation

extension Encodable{
    func asDictonary() -> [String:Any]{
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}
