//
//  ModelData.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/28.
//

import Foundation

struct Cate: Hashable, Codable {
    var id: Int
    var name: String
    var rare: Int
    var type: ItemType
    var price: Int?
    var sellAble: Bool?
    var discription: String
    private var parameter: Parameter
    
    struct Parameter: Hashable,Codable{
        var id: Int
        var division: String
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
