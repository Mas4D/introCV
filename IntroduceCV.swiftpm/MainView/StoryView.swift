//
//  StoryView.swift
//  RobotPolice
//
//  Created by 邵乐 on 2023/4/17.
//

import SwiftUI

struct StoryView: View {
    
    @State var didShowIntroduction: Bool = true
    @State var tag: Int = 0
    
    private let sec = Story.section
    private let intro = Introduce.section

    var body: some View {
        ZStack{
            
            if ((17<=tag && tag<=21) || (27<=tag && tag<=29) ){
                Color.blue.edgesIgnoringSafeArea(.all)
            } else {
                Color.cyan.edgesIgnoringSafeArea(.all)
            }
            
            StoryLabelView(tag: $tag, didShowView: $didShowIntroduction, bgNum: sec[tag].bgNum, roleHeader: sec[tag].roleHeader, roleName: sec[tag].roleName, words: sec[tag].words)
            
            if didShowIntroduction {
                if (tag == 0)  {
                    MaskView(bgColor: .black)
                    BeforeStoryView(didShowView: $didShowIntroduction)
                }
                
                if (tag == introMark[0]) {
                    MaskView(bgColor: .black)
                    IntroduceView(didShowView: $didShowIntroduction, title: intro[0].title, intro1: intro[0].intro1, intro2: intro[0].intro2, source: intro[0].source, img: intro[0].img)
                }
                if (tag == introMark[1]) {
                    MaskView(bgColor: .black)
                    IntroduceView(didShowView: $didShowIntroduction, title: intro[1].title, intro1: intro[1].intro1, intro2: intro[1].intro2, source: intro[1].source, img: intro[1].img)
                }
                if (tag == introMark[2]) {
                    MaskView(bgColor: .black)
                    IntroduceView(didShowView: $didShowIntroduction, title: intro[2].title, intro1: intro[2].intro1, intro2: intro[2].intro2, source: intro[2].source, img: intro[2].img)
                }
            }
            
        }
        .animation(.easeInOut, value: didShowIntroduction)
    }
}



