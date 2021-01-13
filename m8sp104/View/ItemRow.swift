//
//  ItemRow.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/26.
//

import SwiftUI

struct ItemRow: View {
    //@EnvironmentObject var getWeponsModelData: GetWeponsModelData
    //private let weponSpecific = Category(from: load("swordData.json")) as! Decoder
    private var name = "ソード"
    private var specific = "打:230 射:0 法:0 HP:+20"
    //@Binding var itemSpecific:Category
    var body: some View {

        
        HStack{
            Image("sword")
                .resizable()
                .frame(width: 40, height: 40 )
                .padding(5)
            Spacer()
            VStack{
                Text(name)
                    .bold()
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(specific)
            }
            Spacer()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow()
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
