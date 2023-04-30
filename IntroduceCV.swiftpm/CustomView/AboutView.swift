//
//  AboutView.swift
//  RobotPolice
//
//  Created by 邵乐 on 2023/4/17.
//

import SwiftUI


struct AboutView: View{
    @Binding var didShowView: Bool
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Color(.secondarySystemBackground)        .cornerRadius(30)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 35) {
                    VStack(alignment: .leading) {
                        Text("What is")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("Computer Vision")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                    Text("计算机视觉是人工智能（AI）的一个领域，它使计算机和系统能够从数字图像、视频和其他视觉输入中获取有意义的信息，并根据这些信息采取行动或提出建议。")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    Text("今天，计算机视觉现在正在被广泛的应用于商业、娱乐、交通和我们的日常生活当中。近年来，计算机视觉结合了诸如深度学习等新技术，获得了非常惊人的发展，许许多多能改变我们生活应用成功落地。在工业领域，企业可以利用超高精度图像识别来检查生产零件的精度、在医疗领域，医生可以利用计算机视觉辅助辨认病人体内病变的地方、在交通领域，计算机视觉是汽车自动驾驶不可撼动的基石。除了这些，计算机视觉还在数不尽的领域中发挥作用，造福我们的生活。")
                        .font(.title3)
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
