//
//  ItemView.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

struct ItemView: View {
    let weaponParametor: [WeaponParametor] = load("swordData.json")
    //@EnvironmentObject var getWeaponModelData = GetWeaponModelData()
    //var weaponspecificview = WeaponSpecificView(weaponspecificdata: weaponParametor)
    @State private var showFavoritesOnly = true
    @State private var serchItems = ""
    var body: some View {
        NavigationView {
            VStack{
                TextField("Search",  text: $serchItems)
                    .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                List(1..<20) { index in
                    NavigationLink(
                        destination: //weaponspecificview
                        EmptyView(),
                        label: {
                            ItemRow()
                        })
                }
            }
            .navigationTitle("Wepons Data")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
private func loadWeaponParametor()->WeaponParametor{
    _ = GetWeaponModelData()
    
}
struct WeaponSpecificView: View {
    let weaponspecificdata:WeaponParametor
    var body: some View{
        Text("aaaaa")
    }
}
private func loadItemData() -> String {
    return "aa"
}


struct ItemView_Previews: PreviewProvider {
    static let getWeaponModelData = GetWeaponModelData()
    static var previews: some View {
        ItemView(getWeaponModelData.swordData[0])
    }
}
