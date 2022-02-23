//
//  ContentView.swift
//  FirstApp
//
//  Created by Takumi Sakamoto on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Color.red.ignoresSafeArea(.all)

            Text("やどドヤァ!")
                .padding()
                .frame(height: 2.0)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
