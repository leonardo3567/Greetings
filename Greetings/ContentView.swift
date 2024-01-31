//
//  ContentView.swift
//  Greetings
//
//  Created by Newuser on 22/01/2024.
//

import SwiftUI



struct ContentView: View {
 
    var body: some View {
        ZStack {
            //Background
            BackgroundView()
            
            VStack(alignment: .leading) {
                
            //Title
            TitleView()
            Spacer()
            //Messages
            MessagesView()
            
            Spacer()
            Spacer()
                
                
                    
                
                    
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
