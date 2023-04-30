//
//  StoryData.swift
//  LearnPlayground
//
//  Created by 邵乐 on 2023/4/16.
//

import SwiftUI

var introMark = [12, 21, 31]

struct Story {
    
    var tag: Int
    var bgNum: Int
    var roleHeader: String
    var roleName: String
    var words: String
    
    static let section = [
        Story(tag: 1, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "我是一名盲人警察，负责维护着一片社区的治安，居民们都喜欢称呼我为“Sir”"),
        Story(tag: 2, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "虽然我有视觉障碍，但是我有一个助手——视觉机器人“R-Sir”。"),
        Story(tag: 3, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "在计算机技术的帮助下，我可以“听”见这个世界的面貌。"),
        Story(tag: 4, bgNum: 1, roleHeader: "🤖️", roleName: "R-Sir", words: " 早上好Sir，今天我也将帮你听到这个世界。"),
        Story(tag: 5, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "谢谢，让我们开始今天的工作吧"),
        Story(tag: 6, bgNum: 1, roleHeader: "☎️", roleName: "telephone", words: "叮铃铃！！！叮铃铃！！！"),
        Story(tag: 7, bgNum: 1, roleHeader: "😭", roleName: "受害者", words: "喂，请问是R-Sir吗，我的家被小偷偷东西了，请来帮我调查一下是谁做的。"),
        Story(tag: 8, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "这太可恶了，你稍等，我现在马上过去调查！R-Sir，我们出发。"),
        Story(tag: 9, bgNum: 1, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir!"),
        Story(tag: 10, bgNum: 2, roleHeader: " ", roleName: " ", words: "## Sir和R-Sir在出警的路上 ##"),
        Story(tag: 11, bgNum: 2, roleHeader: "👮", roleName: "Sir", words: "R-Sir，今天的太阳真好啊，你可以跟我说一下这里的风景吗"),
        Story(tag: 12, bgNum: 2, roleHeader: "🤖️", roleName: "R-Sir", words: "在一片草坪上，三棵树下面开着两朵花，有一只蝴蝶在空中飞舞"),
        Story(tag: 13, bgNum: 2, roleHeader: "🤖️", roleName: "R-Sir", words: "在一片草坪上，三棵树下面开着两朵花，有一只蝴蝶在空中飞舞"),
        Story(tag: 14, bgNum: 2, roleHeader: "👮", roleName: "Sir", words: "这听起来太棒了，我脑袋中仿佛出现了画面，谢谢你R-Sir"),
        Story(tag: 15, bgNum: 3, roleHeader: "😭", roleName: "受害者", words: "Sir，你一定要抓到他！"),
        Story(tag: 16, bgNum: 3, roleHeader: "👮", roleName: "Sir", words: "交给我吧！R-Sir，请帮我调查一下正对这间房子的监控录像。"),
        Story(tag: 17, bgNum: 3, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir!"),
        Story(tag: 18, bgNum: 4, roleHeader: "👮", roleName: "Sir", words: "R-Sir，向我描述一下调查到的监控录像。"),
        Story(tag: 19, bgNum: 4, roleHeader: "🤖️", roleName: "R-Sir", words: "在一片草坪中间有一间屋子，有一个成年男性在屋子前行走，屋子左侧的窗户中有一个时钟，天上有一个月亮。"),
        Story(tag: 20, bgNum: 4, roleHeader: "👮", roleName: "Sir", words: "R-Sir，你能识别这个人是谁吗？"),
        Story(tag: 21, bgNum: 4, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir! 让我先将他从图像中分割出来识别。"),
        Story(tag: 22, bgNum: 4, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir! 让我先将他从图像中分割出来识别。"),
        Story(tag: 23, bgNum: 5, roleHeader: "🤖️", roleName: "R-Sir", words: "对不起Sir，我做不到，这个人的脸太暗了，我无法识别。"),
        Story(tag: 24, bgNum: 5, roleHeader: "👮", roleName: "Sir", words: "怎么办呢。。。对了！R-Sir，去识别哪个时钟，然后去调查那个时间点这附近的监控录像"),
        Story(tag: 25, bgNum: 5, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir!"),
        Story(tag: 26, bgNum: 6, roleHeader: "🤖️", roleName: "R-Sir", words: "时间是11:37PM，我现在就去检查监控录像"),
        Story(tag: 27, bgNum: 6, roleHeader: " ", roleName: " ", words: "## R-Sir正在检查监控录像 ##"),
        Story(tag: 28, bgNum: 7, roleHeader: "🤖️", roleName: "R-Sir", words: "Sir！找到了！在11:30分的时候，屋子外路口的人行道上，有一个成年男子正在行走，衣服和上一个识别的人一模一样。"),
        Story(tag: 29, bgNum: 7, roleHeader: "👮", roleName: "Sir", words: "好的！R-Sir，去识别哪个人是谁"),
        Story(tag: 30, bgNum: 7, roleHeader: "🤖️", roleName: "R-Sir", words: "Yes! Sir!"),
        Story(tag: 31, bgNum: 8, roleHeader: "🤖️", roleName: "R-Sir", words: "分析中。。。。。。Sir，这个人是老王"),
        Story(tag: 32, bgNum: 8, roleHeader: "🤖️", roleName: "R-Sir", words: "分析中。。。。。。Sir，这个人是老王"),
        Story(tag: 33, bgNum: 8, roleHeader: "👮", roleName: "Sir", words: "老王？好，我们现在就去捉住他！"),
        Story(tag: 34, bgNum: 8, roleHeader: " ", roleName: " ", words: "## Sir 和 R-Sir 抓住了老王 ##"),
        Story(tag: 35, bgNum: 1, roleHeader: "🧔", roleName: "Ben", words: "对不起，我错了，我以后再也不会做这种事情了"),
        Story(tag: 36, bgNum: 1, roleHeader: "👮", roleName: "Sir", words: "任何邪恶终将绳之以法！这个社区未来的治安也将由我来维护。"),
        Story(tag: 37, bgNum: 1, roleHeader: " ", roleName: " ", words: "End\n\n请点击左上角返回键回到主界面。")

    ]
    

}
