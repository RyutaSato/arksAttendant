//
//  GetEventData.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2021/01/04.
//

import Foundation
import Combine
//let eventDates:[EventDate] = getData()
//let filename = "eventDates"

final class GetEventData: ObservableObject {
    @Published var eventDates: [EventDate] = load("eventDates.json")
    
}
/*
func getData() -> [EventDate]{
    guard let path = Bundle.main.path(forResource: filename, ofType: "json")
    else {
        fatalError("Couldn't find \(filename).json")
    }
    let url = URL(fileURLWithPath: path)
    
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Couldn't parse \(url)")
    }
    let decoder = JSONDecoder()
    let dates :EventDates
    do{
        dates = try decoder.decode(EventDates.self,from: data)
    }
    catch{
        fatalError("Couldn't decode JSON data")
    }
    return dates.eventDates
}
 */
//
//struct EventDates: Codable{
//    var eventDates: [EventDate] = load("eventDates.json")
//}
 

struct EventDate: Codable{
    var id: Int
    var name: String
    var startDate:[Int]
    var endDate:[Int]
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
