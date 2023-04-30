//
//  File.swift
//  
//
//  Created by 邵乐 on 2023/4/19.
//

import SwiftUI

struct StoryLabelView: View {
    
    @Binding var tag: Int
    @Binding var didShowView: Bool
    
    var bgNum: Int = 1
    var roleHeader: String = "🤖️"
    var roleName: String = "The role name"
    var words: String = "The words role will say"
    
    var body: some View{
        VStack {
            
            ZStack{
                Image("bg-\(bgNum)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 380, maxHeight: 380)
                    .padding(.top, 100)
                
                if (tag == 36) {
                    Text("End")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .shadow(color: .white, radius: 10)
                        .shadow(color: .white, radius: 10)
                        .padding(.top, 200)
                        
                }
            }
            
            Spacer()
            
            HStack {
                ZStack{
                    Color.yellow
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                    
                    Text(roleHeader)
                        .font(.system(size: 200))
                }
                .padding(.all, 20)

                VStack {
                    Text(roleName)
                        .font(.system(.largeTitle))
                        .fontWeight(.heavy)
                        .frame(maxWidth: .infinity ,alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.bottom, -6)
                         
                    Divider()
                    
                    Text(words)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Text("点击对话框继续对话 >>")
                        .font(.title)
                        .frame(maxWidth: .infinity ,alignment: .trailing)
                        .foregroundColor(.gray)
                }
                .padding([.top, .bottom], 20)
                .padding(.trailing, 40)

            }
            .frame(height: dialogHeight)
            .background(Color(.secondarySystemBackground))
            .onTapGesture {
                if (tag != 36){
                    withAnimation {
                        tag += 1
                    }
                } else {
                    tag = tag
                }
                
                if (tag == introMark[0] || tag == introMark[1] || tag == introMark[2]){
                    didShowView = true
                }
            }
        }
        .ignoresSafeArea(.all)
         
    }
}
