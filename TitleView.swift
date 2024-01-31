//
//  TitleView.swift
//  Greetings
//
//  Created by Newuser on 29/01/2024.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [Color.red, .green, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .zero)
        
    }
    
    
    var body: some View {
        //Title
        HStack {
            VStack(alignment: .leading, spacing: 0){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Exploring iOS programming.")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame( width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation{isRotated.toggle()}
                }
        }
       
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
