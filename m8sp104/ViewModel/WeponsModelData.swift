//
//  WeponsModelData.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/27.
//

import Foundation
var wepons: [Category] = load("weponModelData.json")


func load<T: Decodable>(_ filename: String) -> T{
    let data :Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
