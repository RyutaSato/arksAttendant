import UIKit
import SwiftUI

/*
struct CatInformation: Codable {
    let id: Int
    let name: String
    let toys: [String]
    let status: CatStatus
}

struct CatStatus: Codable {
    let happy: Bool
    let playing: Bool
}

let status = CatStatus(happy: true, playing: true)
let catInfo = CatInformation(id: 1, name: "ネコノヒー", toys: ["ペット小屋", "ぐるぐるタワー"], status: status)

do {
    let encoder = JSONEncoder()
    encoder.outputFormatting = [.prettyPrinted, .withoutEscapingSlashes]
    let jsonData = try encoder.encode(catInfo)
    let jsonString = String(data: jsonData, encoding: .utf8)
    print(jsonString!)
} catch {
    print(error.localizedDescription)
}
*/
let jsonString =
"""
[
    {
        "id": 1,
        "name": "ネコノヒー",
        "toys": ["ペット小屋", "ぐるぐるタワー"],
        "status": {
            "happy": true,
            "playing": true
        }
    },
    {
        "id": 2,
        "name": "ムギ",
        "toys": ["ぬいぐるみ"],
        "status": {
            "happy": true,
            "playing": true
        }
    },
    {
        "id": 3,
        "name": "レオ",
        "toys": [],
        "status": {
            "happy": true,
            "playing": false
        }
    },
]
"""

struct CatInformation: Decodable {
    let id: Int
    let name: String
    let toys: [String]
    let status: CatStatus
}
struct CatStatus: Decodable {
    let happy: Bool
    let playing: Bool
}

//let jsonData = singleCatString.data(using: .utf8)!
//let decoder = JSONDecoder()
//let catInfo = try! decoder.decode(CatInformation.self, from: jsonData)
//print(catInfo)
let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()
let catInfo = try! decoder.decode(Array<CatInformation>.self, from: jsonData)
//print(catInfo)
print(catInfo[1].toys)

