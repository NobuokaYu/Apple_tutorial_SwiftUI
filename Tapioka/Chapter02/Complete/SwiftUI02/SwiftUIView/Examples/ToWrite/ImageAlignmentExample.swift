//
//  ImageFrameView.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/15.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ImageAlignmentExample : View {
    var body: some View {
        ScrollView(.vertical){
        ScrollView(.horizontal){
        VStack{

            HStack{
                VStack{
                    Text("center").font(.largeTitle)
                    Image("face_icon_image")
                        .frame(width: 230 ,height: 230 ,alignment: .center)
                        .background(Color.yellow)
                }
                VStack {
                    Text("leading").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .leading)
                        .background(Color.yellow)
                }
                VStack {
                    Text("trailing").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .trailing)
                        .background(Color.yellow)
                }
            }
            HStack{
                VStack{
                    Text("top").font(.largeTitle)
                    Image("face_icon_image")
                        .frame(width: 230 ,height: 230 ,alignment: .top)
                        .background(Color.yellow)
                }
                VStack {
                    Text("bottom").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .bottom)
                        .background(Color.yellow)
                }
                VStack {
                    Text("topLeading").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .topLeading)
                        .background(Color.yellow)
                }
            }
            HStack{
                VStack{
                    Text("topTrailing").font(.largeTitle)
                    Image("face_icon_image")
                        .frame(width: 230 ,height: 230 ,alignment: .topTrailing)
                        .background(Color.yellow)
                }
                VStack {
                    Text("bottomLeading").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .bottomLeading)
                        .background(Color.yellow)
                }
                VStack {
                    Text("bottomTrailing").font(.largeTitle)
                    Image("face_icon_image")
                        .foregroundColor(.yellow)
                        .frame(width: 230 ,height: 230 ,alignment: .bottomTrailing)
                        .background(Color.yellow)
                }
            }
        }
        }
        }
    }
}

#if DEBUG
struct ImageAlignmentExample_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ImageAlignmentExample()
                .previewDevice(PreviewDevice(rawValue: "iPad8,1"))
                .previewDisplayName("iPad8,1")
        }
    }
}
#endif
