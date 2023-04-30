//
//  File.swift
//  
//
//  Created by 邵乐 on 2023/4/18.
//

import SwiftUI

struct BeforeStoryView: View{
    @Binding var didShowView: Bool
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Color(.secondarySystemBackground)        .cornerRadius(30)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 35) {
                    VStack(alignment: .leading) {
                        Text("欢迎来到")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("盲人警察")
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                    Text("计算机视觉在我们的生活中广泛被应用。今天，在发展了这么多年后，计算机视觉结合了诸如深度学习等新技术，做出了许许多多可以方便我们生活的技术，特别是对于视障人士。")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    Text("在这个故事中，你将会看到一个盲人警察在视觉辅助机器人的帮助下抓捕小偷的故事，从中简单的了解到计算机视觉是怎样帮助视障人士生活、工作、认识世界。现在，请欣赏这个故事。")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                }
                .padding(.top)
                
                Spacer()
            }
            .padding(25)
            
            Button{
                didShowView = false
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .XmarkStyle()
            }
            .padding(20)
            .ignoresSafeArea(.all, edges: .top)
        }
        .padding(100)
    }
}

