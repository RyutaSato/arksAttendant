//
//  m8sp104App.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

@main
struct m8sp104App: App {
    @StateObject private var getEventData = GetEventData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(getEventData)
        }
    }
}
