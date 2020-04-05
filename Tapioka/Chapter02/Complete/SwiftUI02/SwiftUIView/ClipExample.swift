//
//  ClipAndMask.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/24.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ClipExample : View {
    var body: some View {
        
        VStack {
            
            Image("face_icon_image")
                .frame(width: 100, height: 100)
                .border(Color.blue)
            
            Spacer().frame(height:50)
            
            Image("face_icon_image")
                .frame(width: 100, height: 100)
                .border(Color.blue)
                .clipped()
            
            Spacer().frame(height:50)
            
            Image("sakura_image")
                .clipShape(Circle())
            
            Spacer().frame(height:50)
            
            Image("sakura_image")
                .cornerRadius(10)


            
            
        }

    }
}

#if DEBUG
struct ClipAndMask_Previews : PreviewProvider {
    static var previews: some View {
        ClipExample()
    }
}
#endif
