//
//  YadonImage.swift
//  FirstApp
//
//  Created by Takumi Sakamoto on 2022/02/23.
//

import SwiftUI

struct YadonImage: View {
    var body: some View {
        Image("yadon")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct YadonImage_Previews: PreviewProvider {
    static var previews: some View {
        YadonImage()
    }
}
