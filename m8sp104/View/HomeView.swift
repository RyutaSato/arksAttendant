//
//  HomeView.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

struct HomeView: View {
    let eventDates: [EventDate] = load("eventDates.json")
//    let listNum = 5
//    @State var boolset = false
//    var nextEmergencyName = "原初の闇"
//    var nextEmergencyName2 = "ssss2020"
    @EnvironmentObject var getEventData: GetEventData
    var eventDate:EventDate
    
    var eventIndex: Int {
        getEventData.eventDates.firstIndex(where: {$0.id == eventDate.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack{
                Text(getEventData.eventDates[eventIndex + 1].name)
                    .padding()
                Text(loadDateData())
                Text("この後のイベント")
                    .font(.headline)
                    .foregroundColor(Color.black)
                HStack{
                    Text("12月24日 21:00")
                    Spacer()
                    //Text(nextEmergencyName2)
                }
                .padding()
                HStack{
                    Text("12月24日 21:00")
                    Spacer()
                    //Text(nextEmergencyName2)
                }
                .padding()
//                EventNowRow()
//                    .padding()
//                EventNextRow()
//                    .padding()
            }
        }
    }
}
private func loadDateData() -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")
    dateFormatter.locale = Locale(identifier: "ja_JP")
    dateFormatter.calendar = Calendar(identifier: .gregorian)
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
    let dateString = dateFormatter.string(from: Date())
    return dateString
}
struct aaaa: View{
    var body: some View{
        Text("aa")
    }
}

struct HomeView_Previews: PreviewProvider {
    static let getEventData = GetEventData()
    static var previews: some View {
        HomeView(eventDate: getEventData.eventDates[0])
            .environmentObject(getEventData)
    }
}
