//
//  ContentView.swift
//  FirstApp
//
//  Created by Takumi Sakamoto on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var nakikoe:String = "zzz"
    
    
    var body: some View {
        
        
        VStack(alignment: .leading)  {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            HStack {
                HStack {
                        YadonImage()
                }
                VStack{
                    Button(action:{
                        let rand = Int.random(in: 0...3)
                        switch rand {
                        case 0:
                            nakikoe = "ドドドヤァ"
                            break
                        case 1:
                            nakikoe = "ドヤァ！！"
                            break
                        case 2:
                            nakikoe = "ドヤァ？"
                        default:
                            nakikoe = "なんだい？"
                        }
                        
                    }){
                        Text("鳴く")
                            .font(.largeTitle)
                            .frame(width: 120, height:60, alignment:.center
                                )
                            .foregroundColor(Color.white)
                            .background(Color.pink)
                            .cornerRadius(15, antialiased: true )
                    }
                    Text("\(nakikoe)")
                        .font(.title2)
                        .padding()
                
                }
            }
                    
            VStack(alignment: .leading) {
                Text("ヤドみ生息地")
                    .font(.title)
                HStack {
                    Text("大阪市中央区")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("ライオンズタワー")
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
