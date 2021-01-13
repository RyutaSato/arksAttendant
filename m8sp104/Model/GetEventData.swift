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
