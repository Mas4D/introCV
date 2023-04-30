//
//  IntroduceView.swift
//  RobotPolice
//
//  Created by 邵乐 on 2023/4/17.
//

import SwiftUI


struct IntroduceView: View {
    
    @Binding var didShowView: Bool
    var title: String =  "The title"
    var intro1: String = "The first introduce"
    var intro2: String = "The second introduce"
    var source: String = "Source: "
    var img: Int = 1
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            Color(.secondarySystemBackground)
                .cornerRadius(30)
            
            ScrollView {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity)
                    .padding(25)
                
                if (img == 3){
                    Image(systemName: "faceid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 250)
                } else{
                    Image("intro-\(img)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 350)
                }
                    
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 35) {
                        Text(intro1)
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(intro2)
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding(.top)
                }
                .padding(25)

            }
            
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



