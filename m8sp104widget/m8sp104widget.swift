//
//  m8sp104widget.swift
//  m8sp104widget
//
//  Created by 佐藤竜太 on 2020/12/27.
//

import WidgetKit
import SwiftUI
struct EventWidgetData{
    let date:Date
    let event:String
}

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
//    func InitEventDates()->DateComponents{
//        var _eventDates:[EventDate] = getData()
//        var initEventDates = DateComponents(timeZone: .current, year: 2000 + (_eventDates.startDate), month: <#T##Int?#>, day: <#T##Int?#>, hour: <#T##Int?#>, minute: <#T##Int?#>, second: <#T##Int?#>, nanosecond: <#T##Int?#>, weekday: <#T##Int?#>, weekdayOrdinal: <#T##Int?#>, quarter: <#T##Int?#>, weekOfMonth: <#T##Int?#>, weekOfYear: <#T##Int?#>, yearForWeekOfYear: <#T##Int?#>)
//
//
//    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct m8sp104widgetEntryView : View {
    var entry: Provider.Entry
    //ここから
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    Text(entry.date, style: .time)
                        .minimumScaleFactor(0.5)
                    Text("現在のイベント")
                        .minimumScaleFactor(0.7)
                }.padding(2)
                    Text("緊急:メリクリ ")
                        .multilineTextAlignment(.leading)
                    Text("22:00 原初aaaaaaaaaaaaaaaa")
                        .multilineTextAlignment(.leading)
                    Text("24:00 原初")
                        .multilineTextAlignment(.leading)
                    Text("0:00 原初")
                        .multilineTextAlignment(.leading)
                    
            }
            .font(.body)
        }
        //.foregroundColor(.white)
    }
    //ここまで
}

@main
struct m8sp104widget: Widget {
    let kind: String = "m8sp104widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            m8sp104widgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct m8sp104widget_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            m8sp104widgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            m8sp104widgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            m8sp104widgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
