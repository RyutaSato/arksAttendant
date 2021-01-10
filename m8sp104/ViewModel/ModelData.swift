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
    var type: String
    var price: Int?
    var sellAble: Bool = true
    var discription: String = ""
    private var parameter: Parameter?
    
    struct Parameter: Hashable,Codable{
        var id: Int
        var weponType: String
        var name: String
        var hp: Int = 0
        var pp: Int = 0
        var powerAttack: Int = 0
        var shootAttack: Int = 0
        var magicAttack: Int = 0
        var skill: Int
        var powerDefence: Int = 0
        var shootDefence: Int = 0
        var magicDefence: Int = 0
        var catalist: String
    }
    
}
