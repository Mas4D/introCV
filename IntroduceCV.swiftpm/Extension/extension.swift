//
//  File.swift
//  
//
//  Created by 邵乐 on 2023/4/18.
//

import SwiftUI

var quarterWidth: CGFloat = UIScreen.main.bounds.width / 4
var dialogHeight: CGFloat = UIScreen.main.bounds.height / 3


extension View {
    func buttonStyle() -> some View {
        font(.system(size: 40, weight: .semibold))
        .foregroundColor(.black)
        .frame(minWidth: 500, maxHeight: 85)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 20)
    }
}

extension Image {
    func XmarkStyle() -> some View {
        resizable()
        .frame(maxWidth: 50, maxHeight: 50)
        .foregroundColor(.gray)
    }
}
