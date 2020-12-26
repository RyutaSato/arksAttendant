//
//  ItemView.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/23.
//

import SwiftUI

struct ItemView: View {
    var weaponspecificview = WeaponSpecificView()
    @State private var serchItems = ""
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    TextField("Search",  text: $serchItems)
                        .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                        
                    List(1..<20) { index in
                        NavigationLink(
                            destination: weaponspecificview,
                            label: {
                                ItemRow()
                            })
                    }
                    .navigationTitle("Wepons Data")
                    .navigationBarTitleDisplayMode(.inline)
                    
                }
                
            }
        }
        }
}
struct WeaponSpecificView: View {
    var body: some View{
        Text("aaaaa")
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
