//
//  ModelData.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/28.
//

import Foundation
import Combine

class GetEventData: ObservableObject {
    @Published var eventDates: [EventDate] = load("eventDates.json")
}
class GetWeponsModelData: ObservableObject {
    @Published var swordData: [Category] = load("swordData.json")
}
struct Category: Hashable, Codable {
    var id: Int
    var name: String
    var rare: Int = 0
    var type: String = ""
    var price: Int = 0
    var sellAble: Bool = true
    var discription: String = ""
    private var parameter: Parameter
}
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
struct EventDate: Codable{
    var id: Int
    var name: String
    var startDate:String
    var endDate:String
}
struct SpecificDateTime:Codable{
    var year:Int16
    var mon:Int8
    var day:Int8
    var hour:Int8
    var min:Int8
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        print("line74 completed!")
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
