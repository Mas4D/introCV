



import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    
    @State var didAboutViewShow: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color.cyan
                    .edgesIgnoringSafeArea(.all)
                VStack (spacing: 20){
                    
                    Text("🧑‍🦯 👮 🤖️")
                        .font(.system(size: 100))
                    Text("盲人 警察")
                        .font(.system(size: 80))
                    
                    NavigationLink{
                        StoryView()
                    } label: {
                        HStack{
                            Text("开始故事")
                        }
                        .buttonStyle()
                    }.padding(.bottom, 40)

                    Button{
                        didAboutViewShow = true
                    } label: {
                        HStack{
                            Text("关于计算机视觉")
                        }
                        .buttonStyle()
                    }.padding(.bottom, 40)
                    
                    NavigationLink{
                        AppleCVView()
                    } label: {
                        HStack{
                            Text("相关应用")
                        }
                        .buttonStyle()
                    }

                }
                
                if didAboutViewShow {
                    MaskView(bgColor: .black)
                    AboutView(didShowView: $didAboutViewShow)
                }
            }
            .animation(.easeInOut, value: didAboutViewShow)
            
        }
    }
}
