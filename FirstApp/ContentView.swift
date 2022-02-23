//
//  ContentView.swift
//  FirstApp
//
//  Created by Takumi Sakamoto on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment: .leading)  {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    Spacer()
                Text("California")
                    .font(.subheadline)
            }.padding()
        }
        
        ZStack{
            
            Color.red.ignoresSafeArea(.all)

            Text("やどドヤァ!")
                .font(.title)
                .foregroundColor(.green)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
