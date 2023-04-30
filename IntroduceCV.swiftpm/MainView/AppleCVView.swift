//
//  AppleCVView.swift
//  RobotPolice
//
//  Created by 邵乐 on 2023/4/17.
//

import SwiftUI

struct AppleCVView: View {
    
    private let intro = AppleIntroduce.exm
    
    @State var didShowLiveText: Bool = false
    @State var didShowLiftSubject: Bool = false
    @State var didShowMagnifier: Bool = false
    @State var didShowImageDescription: Bool = false
    
    var body: some View {
        ZStack {
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("计算机视觉")
                    .font(.system(size: 80, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(minWidth: 500, maxHeight: 85)
                    .shadow(color: .white.opacity(0.25), radius: 0, x: 2, y: 2)
                    .padding(.bottom, 40)
                
                Button{
                    didShowLiveText = true
                } label: {
                    HStack{
                        Text("文本识别")
                    }
                    .buttonStyle()
                }.padding(.bottom, 40)
                
                Button{
                    didShowLiftSubject = true
                } label: {
                    HStack{
                        Text("图像分割")
                    }
                    .buttonStyle()
                }.padding(.bottom, 40)
                
                Button{
                    didShowMagnifier = true
                } label: {
                    HStack{
                        Text("人脸识别")
                    }
                    .buttonStyle()
                }.padding(.bottom, 40)
                
                Button{
                    didShowImageDescription = true
                } label: {
                    HStack{
                        Text("图像描述")
                    }
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(minWidth: 500, maxHeight: 85)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 20)
                }.padding(.bottom, 40)
                
            }
            
            if didShowLiveText {
                MaskView(bgColor: .black)
                AppleIntroView(didShowView: $didShowLiveText, img: intro[0].img, name: intro[0].name, intro1: intro[0].intro1, intro2: intro[0].intro2, source: intro[0].source)
            }
            
            if didShowLiftSubject {
                MaskView(bgColor: .black)
                AppleIntroView(didShowView: $didShowLiftSubject, img: intro[1].img, name: intro[1].name, intro1: intro[1].intro1, intro2: intro[1].intro2, source: intro[1].source)
            }
            
            if didShowMagnifier {
                MaskView(bgColor: .black)
                AppleIntroView(didShowView: $didShowMagnifier, img: intro[2].img, name: intro[2].name, intro1: intro[2].intro1, intro2: intro[2].intro2, source: intro[2].source)
            }
            
            if didShowImageDescription {
                MaskView(bgColor: .black)
                AppleIntroView(didShowView: $didShowImageDescription, img: intro[3].img, name: intro[3].name, intro1: intro[3].intro1, intro2: intro[3].intro2, source: intro[3].source)
            }
            
        }
        .animation(.easeInOut, value: didShowMagnifier)
        .animation(.easeInOut, value: didShowLiveText)
        .animation(.easeInOut, value: didShowLiftSubject)
        .animation(.easeInOut, value: didShowImageDescription)
    }
}
