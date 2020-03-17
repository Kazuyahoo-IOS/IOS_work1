//
//  ContentView.swift
//  IOS_work1
//
//  Created by 王瑋 on 2020/3/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //尾巴
            Group{
                PeppaCircleView(pos_x: 389, pos_y: 569, circle: 26, red: 244, green: 191, blue:217)
                Ellipse()
                    .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .frame(width:7,height:9)
                    .position(x:389,y:569)
                Path(CGRect(x: 356, y: 577, width: 41,
                            height:9))
                    .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                
                Path{ (path) in
                    path.move(to: CGPoint(x: 397, y: 579))
                    path.addQuadCurve(to: CGPoint(x:410, y:569), control: CGPoint(x: 412, y:582))
                    path.addQuadCurve(to: CGPoint(x:414, y:570), control: CGPoint(x: 414, y:570))
                    path.addQuadCurve(to: CGPoint(x:414, y:585), control: CGPoint(x: 414, y:585))
                    path.addQuadCurve(to: CGPoint(x:387, y:586), control: CGPoint(x: 405, y:594))
                }
                .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
            }
            
            //下半身
            Group{
                //腳
                Path(CGRect(x: 197, y: 628, width: 10,
                            height:47))
                    .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                Path(CGRect(x: 304, y: 628, width: 10,
                            height:46))
                    .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                //鞋
                PeppaShoes()
                .fill(Color(red: 35/255, green:31/255, blue: 32/255))
                    .offset(x:-1,y:0)
                PeppaShoes()
                .fill(Color(red: 35/255, green:31/255, blue: 32/255))
                    .position(x:313,y:447)
               
            }
            
            //手
            Group{
                //左手
                Path(CGRect(x: 127, y: 491, width: 44,
                            height:10))
                    .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                    .rotationEffect(.degrees(20))
                //球
                Group{
                    PeppaCircleView(pos_x: 67, pos_y: 439, circle: 140, red: 0, green: 0)
                    PeppaCircleView(pos_x: 20, pos_y: 409, circle: 20)
                    PeppaCircleView(pos_x: 42, pos_y: 387, circle: 20)
                    PeppaCircleView(pos_x: 50, pos_y: 417, circle: 20)
                }
                //右手
                Path(CGRect(x: 124, y: 521, width: 44,
                            height:10))
                    .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                    .rotationEffect(.degrees(20))
                PeppaRouRectView(pos_x: 95, pos_y: 489, rotate: 30)
                PeppaRouRectView(pos_x: 109, pos_y: 487, rotate: 65)
                PeppaRouRectView(pos_x: 102, pos_y: 502, rotate: -30)
            }
            //衣服
            PeppaCloth()
                .stroke(lineWidth:8)
                .fill(Color(red: 245/255, green: 53/255, blue: 40/255))
            PeppaCloth()
                .fill(Color(red: 242/255, green: 99/255, blue: 93/255))
            PeppaHeadView()
            Text("我們打球，你當球！")
                .font(.title)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .position(x:220,y:155)
            
        }
        .background(Image("background")
        .resizable())
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PeppaDotView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var body: some View {
        Ellipse()
            .fill(Color(red: 194/255, green: 115/255, blue: 163/255))
            .frame(width: 12, height: 15)
            .position(x: pos_x, y: pos_y)
    }
}

struct PeppaCircleView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var circle: CGFloat
    var red: Double=255
    var green: Double=255
    var blue: Double=255
    var body: some View {
        Circle()
            .fill(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(width: circle, height: circle)
            .position(x:pos_x,y:pos_y)
    }
}

struct PeppaRouRectView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var rotate: Double=0
    var width: CGFloat=22
    var height: CGFloat=10
    var red: Double=244
    var green: Double=191
    var blue: Double=217
    var body: some View {
        RoundedRectangle(cornerRadius:30)
            .fill(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(width: width, height: height)
            .rotationEffect(.degrees(rotate))
            .position(x:pos_x,y:pos_y)
    }
}


struct PeppaEllipseView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var rotate: Double=0
    var width: CGFloat
    var height: CGFloat
    var red: Double
    var green: Double
    var blue: Double
    var body: some View {
        Ellipse()
            .fill(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(width: width, height: height)
            .rotationEffect(.degrees(rotate))
            .position(x:pos_x,y:pos_y)
    }
}

struct PeppaHeadView: View {
    var body: some View {
        Group{
            //耳朵
            PeppaEar()
                .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
            PeppaEar()
                .stroke(lineWidth:7)
                .fill(Color(red: 234/255, green: 147/255, blue: 190/255))
            PeppaEar()
                .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
                .position(x:196,y:451)
                .rotationEffect(.degrees(20))
            PeppaEar()
                .stroke(lineWidth:7)
                .fill(Color(red: 234/255, green: 147/255, blue: 190/255))
                .position(x:196,y:451)
                .rotationEffect(.degrees(20))
            //臉
            PeppaFace()
                .stroke(lineWidth:7)
                .fill(Color(red: 234/255, green: 147/255, blue: 190/255))
            PeppaFace()
                .fill(Color(red: 244/255, green: 191/255, blue: 217/255))
            //眼
            Group{
                PeppaEllipseView(pos_x:211, pos_y: 286, width: 42, height: 43, red: 235, green: 152, blue: 196)
                PeppaEllipseView(pos_x:212, pos_y: 286, width: 27, height: 26, red: 255, green: 255, blue: 255)
                PeppaEllipseView(pos_x:214, pos_y: 286, width: 12, height: 13, red: 38, green: 34, blue: 35)
                PeppaEllipseView(pos_x:260, pos_y: 310, width: 42, height: 43, red: 235, green: 152, blue: 196)
                PeppaEllipseView(pos_x:260, pos_y: 310, width: 27, height: 26, red: 255, green: 255, blue: 255)
                PeppaEllipseView(pos_x:262, pos_y: 310, width: 12, height: 13, red: 38, green: 34, blue: 35)
            }
            //嘴巴
            Path{ (path) in
                path.move(to: CGPoint(x: 178, y: 390))
                path.addQuadCurve(to: CGPoint(x:213, y:430), control: CGPoint(x: 178, y:420))
                path.addQuadCurve(to: CGPoint(x:258, y:410), control: CGPoint(x: 248, y:435))
            }
            .stroke(lineWidth:8)
            .fill(Color(red: 231/255, green: 85/255, blue: 147/255))
            //腮紅
            PeppaEllipseView(pos_x:305, pos_y: 385, rotate: 30, width: 55, height: 64, red: 243, green: 161, blue: 197)
            //鼻子
            Group{
                Path{ (path) in
                    path.move(to: CGPoint(x: 112, y: 326))
                    path.addQuadCurve(to: CGPoint(x:160, y:290), control: CGPoint(x: 145, y:320))
                    path.addQuadCurve(to: CGPoint(x:160, y:241), control: CGPoint(x: 170, y:265))
                }
                .stroke(lineWidth:5)
                .fill(Color(red: 234/255, green: 147/255, blue: 190/255))
                PeppaDotView(pos_x: 141, pos_y: 281)
                PeppaDotView(pos_x: 121, pos_y: 275)
                
            }
        }
    }
}

struct PeppaEar:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 259, y: 268))
            path.addQuadCurve(to: CGPoint(x:264, y:230), control: CGPoint(x: 253, y:240))
            path.addQuadCurve(to: CGPoint(x:285, y:219), control: CGPoint(x: 275, y:218))
            path.addQuadCurve(to: CGPoint(x:297, y:239), control: CGPoint(x: 300, y:219))
            path.addQuadCurve(to: CGPoint(x:277, y:278), control: CGPoint(x: 289, y:268))
        }
    }
}

struct PeppaFace:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 162, y: 360))
            path.addQuadCurve(to: CGPoint(x:97, y:300), control: CGPoint(x: 100, y:322))
            path.addQuadCurve(to: CGPoint(x:109, y:257), control: CGPoint(x: 92, y:274))
            path.addQuadCurve(to: CGPoint(x:150, y:242), control: CGPoint(x: 126, y:241))
            path.addQuadCurve(to: CGPoint(x:260, y:268), control: CGPoint(x: 200, y:240))
            path.addQuadCurve(to: CGPoint(x:321, y:307), control: CGPoint(x: 304, y:288))
            path.addQuadCurve(to: CGPoint(x:353, y:368), control: CGPoint(x: 352, y:345))
            path.addQuadCurve(to: CGPoint(x:336, y:448), control: CGPoint(x: 360, y:410))
            path.addQuadCurve(to: CGPoint(x:260, y:488), control: CGPoint(x: 308, y:490))
            path.addQuadCurve(to: CGPoint(x:175, y:460), control: CGPoint(x: 200, y:485))
            path.addQuadCurve(to: CGPoint(x:150, y:390), control: CGPoint(x: 140, y:420))
            path.closeSubpath()
        }
    }
}


struct PeppaCloth:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 172, y: 460))
            path.addQuadCurve(to: CGPoint(x:150, y:500), control: CGPoint(x: 152, y:493))
            path.addQuadCurve(to: CGPoint(x:122, y:624), control: CGPoint(x: 110, y:623))
            path.addQuadCurve(to: CGPoint(x:370, y:624), control: CGPoint(x: 115, y:624))
            path.addQuadCurve(to: CGPoint(x:320, y:469), control: CGPoint(x: 350, y:471))
        }
    }
}

struct PeppaShoes:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 147, y: 676))
            path.addQuadCurve(to: CGPoint(x:172, y:669), control: CGPoint(x: 150, y:667))
            path.addQuadCurve(to: CGPoint(x:208, y:675), control: CGPoint(x: 192, y:671))
            path.addQuadCurve(to: CGPoint(x:203, y:682), control: CGPoint(x: 212, y:680))
            path.addQuadCurve(to: CGPoint(x:155, y:684), control: CGPoint(x: 170, y:687))
            path.addQuadCurve(to: CGPoint(x:147, y:677), control: CGPoint(x: 147, y:683))
            path.closeSubpath()
           
        }
    }
}
