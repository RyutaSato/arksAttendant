//
//  ContentView.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
//                HomeView()
//                    .tabItem {
//                        Image(systemName: "1.square.fill")
//                        Text("Home")
//                    }
                ItemView()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Item")
                    }
                MissionView()
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Quest")
                    }
                SpecialAbilityView()
                    .tabItem {
                        Image(systemName: "4.square.fill")
                        Text("Ability")
                    }
                SettingView()
                    .tabItem {
                        Image(systemName: "5.square.fill")
                        Text("Setting")
            }
        }
        
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //.environmentObject(GetEventData)
    }
}
