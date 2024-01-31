//
//  MessagesView.swift
//  Greetings
//
//  Created by Newuser on 29/01/2024.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello There",
              color: .green),
        .init(text: "Welcome to Swift",
              color: .gray),
        .init(text: "Are you ready, ",
              color: .yellow),
        .init(text: "start exploring",
              color: .red),
        .init(text: "Boom.",
              color: .purple),
    ]
    var body: some View {
        VStack( alignment: .leading) {
            ForEach(messages){dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
                
            }
        }
    }
}

#Preview {
    MessagesView()
}
