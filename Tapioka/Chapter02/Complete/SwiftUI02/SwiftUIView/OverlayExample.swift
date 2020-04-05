//
//  OverlayExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/24.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OverlayExample : View {
    var body: some View {
        
        VStack {
            Text("Hello SwiftUI!")
                .background(Color.yellow)
                .overlay(
                    Color.green
                        .offset(x:10,y:10))
                .overlay(
                    Text("Hacking to the Swift")
                        .background(Color.pink)
                        .offset(x:20,y:20))
            
            Spacer().frame(height: 100)
            
            Image("big-image")
                .overlay(
                    Text("SwiftUI")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(),
                    alignment: .top)
            
            
            Spacer().frame(height: 100)
            
            ZStack(alignment: .top) {
                Image("big-image")
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top)
            }
        }

    }
}

#if DEBUG
struct OverlayExample_Previews : PreviewProvider {
    static var previews: some View {
        OverlayExample()
    }
}
#endif
