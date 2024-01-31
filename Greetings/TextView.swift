//
//  TextView.swift
//  Greetings
//
//  Created by Newuser on 23/01/2024.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color
    let colors: [Color] = [
        .red,
        .green,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0),
    ]
    var body: some View {
        Text(text)
            
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5, x: 10 , y: 10)
            .onTapGesture {
                //Randomly Change Color
                
            color = colors.randomElement() ?? .red
                
            }
                
    }
}

#Preview {
    VStack{
        TextView(text: "Hello There", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)
        TextView(text: "Hello There", color: .green)
    }
}





