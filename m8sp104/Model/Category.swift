//
//  Category.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/26.
//

import Foundation
import SwiftUI

struct Category: Hashable, Codable {
    var id: Int
    var name: String
    var rare: Int = 0
    var type: String = ""
    var price: Int = 0
    var sellAble: Bool = true
    var discription: String = ""
    private var parameter: Parameter
    
    struct Parameter: Hashable,Codable{
        var id: Int
        var division: String = ""
        var name: String
        var hp: Int
        var pp: Int
        var pa: Int
        var sa: Int
        var ma: Int
        var skill: Int
        var pd: Int
        var sd: Int
        var md: Int
        var catalistId: Int
    }
    
}
enum ItemType: String, Codable{
    
    case weapons
    case units
    case pets
    case rings
    case items
    case photonArts
    case costumes
    case techniques
    case equipments
}
