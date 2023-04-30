//
//  IntroduceData.swift
//  RobotPolice
//
//  Created by 邵乐 on 2023/4/17.
//


import SwiftUI

struct Introduce {
    var title:  String
    var intro1: String
    var intro2: String
    var source: String
    var img:    Int
    
    static let section = [
        Introduce(title: "图像描述",
                  intro1: "图像描述可以识别一张图片中所包含的元素并标注出来。而对于视障人群，图像描述给了他们用别的感官去认识世界的可能性。在Apple，用“Magnifier”可以帮助视障人群听到周围的世界是什么样子的，它甚至可以实时的把摄像头画面中的行人、商标和门用语音描述出来，来帮助视障人群出行。有一些公司还结合了诸如触觉等其他感官来帮助视障人士认识世界，行走在这个世界当中。",
                  intro2: "",
                  source: "https://www.apple.com/accessibility/",
                  img: 1),
        
        Introduce(title: "Image segmentation",
                  intro1: "图像分割是计算机视觉中至关重要的预处理方式，它包括将视觉输入分割成片段以简化图像分析。图像分割将像素组织成更大的部分，消除了将单个像素作为观察单位的需要，以便进行后续的图像处理。例如在图像描述功能中，计算机需要先将图像分割成一个个物体，然后才可以以更高的效率针对性的分析每一个物体是什么，然后将其描述出来。",
                  intro2: "",
                  source: "https://en.wikipedia.org/wiki/Image_segmentation",
                  img: 2),
        
        Introduce(title: "人脸识别",
                  intro1: "人脸识别是我们日常生活中运用最多的计算机视觉技术之一。它现在已广泛应用于金融、司法、军队、公安、边检、政府、航天、电力、工厂、教育、医疗及众多企事业单位等领域。在本故事中，人脸识别被用来辨认小偷，这也是人脸识别当今被用到的最多的地方之一。",
                  intro2: "",
                  source: "https://en.wikipedia.org/wiki/Facial_recognition_system",
                  img: 3)
    ]
}
