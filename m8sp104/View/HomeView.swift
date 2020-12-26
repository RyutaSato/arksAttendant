//
//  HomeView.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

struct HomeView: View {
    let listNum = 5
    @State var boolset = false
    var nextEmergencyName = "原初の闇"
    var nextEmergencyName2 = "ssss2020"
    var body: some View {
        ScrollView{
            VStack{
                Text(nextEmergencyName + "  is comming")
                    .padding()
                Text("この後のイベント")
                    .font(.headline)
                    .foregroundColor(Color.black)
                HStack{
                    Text("12月24日 21:00")
                    Spacer()
                    Text(nextEmergencyName2)
                }
                .padding()
                HStack{
                    Text("12月24日 21:00")
                    Spacer()
                    Text(nextEmergencyName2)
                }
                .padding()
                EventNowRow()
                    .padding()
                EventNextRow()
                    .padding()
            }
            
        }
    }
}
struct aaaa: View{
    var body: some View{
        Text("aa")
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
