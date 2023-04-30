//
//  File.swift
//  
//
//  Created by 邵乐 on 2023/4/17.
//

import SwiftUI

struct MaskView: View {
    var bgColor: Color
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
        .opacity(0.4)
    }
}
