//
//  ItemRow.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/26.
//

import SwiftUI

struct ItemRow: View {

    var body: some View {
        
        HStack{
            Image("sword")
                .resizable()
                .frame(width: 40, height: 40 )
                .padding(5)
            Spacer()
            VStack{
                Text("ソード")
                    .bold()
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("打:230 射:0 法:0 HP:+20")
            }
            Spacer()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow()
            //.previewLayout(.fixed(width: 300, height: 60))
    }
}
