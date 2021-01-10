import UIKit
import SwiftUI
let str = "eventDates.json"
guard let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else{
    fatalError("FAILED")
}
let fileURL = dirURL.appendingPathComponent(str)
print(fileURL)
print(dirURL)
let jsonString = try? String(contentsOfFile: str, encoding: .utf8)

/*
"""
[
    {
        "id": 1,
        "name": "原初の闇",
        "startDate": [2021,1,5,23,30],
        "endDate": [2021,1,6,0,0]
    },
    {
        "id": 2,
        "name": "メリクリ2020",
        "startDate": [2021,1,6,4,0],
        "endDate": [2021,1,6,4,30]
    }
]
"""
 */
struct DateInput:Decodable{
    var id:Int
    var name:String
    var startDate:[Int]
    var endDate:[Int]
}
let jsonData = jsonString?.data(using: .utf8)!
let decoder = JSONDecoder()
if(jsonData != nil){
    let eventInfo = try! decoder.decode(Array<DateInput>.self, from: jsonData!)
    print(eventInfo)
}else{
    exit(0)
}


