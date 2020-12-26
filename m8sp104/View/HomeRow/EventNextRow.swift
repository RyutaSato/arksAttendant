//
//  EventNextRow.swift
//  m8sp104
//
//  Created by 佐藤竜太 on 2020/12/26.
//

import SwiftUI

struct EventNextRow: View {
    var body: some View {
        Text("EventNextRow")
            .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color(.yellow))
    }
}

struct EventNextRow_Previews: PreviewProvider {
    static var previews: some View {
        EventNextRow()
            .previewLayout(.fixed(width: 320, height: 120))
    }
}
