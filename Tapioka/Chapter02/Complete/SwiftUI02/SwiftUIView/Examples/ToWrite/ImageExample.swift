//
//  ImageView.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/15.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI



struct ImageExample : View {
    var body: some View {
        VStack {
            Image("face_icon_image")
            Image(uiImage: UIImage(named: "face_icon_image")!)
            Image(systemName: "circle.grid.hex.fill")
            Image(systemName: "circle.grid.hex.fill")
                .foregroundColor(.orange)
            Image(systemName: "circle.grid.hex.fill")
                .font(.largeTitle)
                .foregroundColor(.orange)
            Image("face_icon_image")
                .resizable()
                .frame(width: 300.0 ,height: 120.0 )
            Image("face_icon_image")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0 ,height: 120.0 )
            Image("face_icon_image")
                .resizable()
                .scaledToFill()
                .frame(width: 300.0 ,height: 120.0 )
                .clipped()
            Text("Hello World!")
                .border(Color.black)

        }
    }
}

#if DEBUG
struct ImageExample_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ImageExample()
//            ImageExample()
//                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}
#endif
