//
//  WeponsModelData.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/27.
//

import Foundation
import Combine
//var wepons: [Category] = load("weponModelData.json")

/*
final class WeponsModelData: ObservableObject {
    @Published var swordData: [Category] = load("swordData.json")
}

func load<T: Decodable>(_ filename: String) -> T{
    let data :Data
    //get pass of JSONfile added to the project
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    //read context of JSONfile to "data" property
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    //JSON decode process
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

*/
