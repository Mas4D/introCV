//
//  File.swift
//  
//
//  Created by 邵乐 on 2023/4/18.
//

import SwiftUI

struct AppleIntroView: View{
    
    @Binding var didShowView: Bool
    var img : String
    var name: String
    var intro1: String
    var intro2: String
    var source: String
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Color(.secondarySystemBackground)
                .cornerRadius(30)
            
            VStack( alignment: .leading) {
                VStack(alignment: .leading, spacing: 35) {
                    VStack{
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.leading)
                    }

                    HStack{
                        Image("\(img)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: quarterWidth)
                            .cornerRadius(30)
                            
                        
                        Divider().padding([.leading, .trailing], 20)
                        
                        VStack(alignment: .leading){
                            Text(intro1)
                                .font(.title3)
                                .multilineTextAlignment(.leading)
                            Text(intro2)
                                .font(.title3)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(maxHeight: .infinity)
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
