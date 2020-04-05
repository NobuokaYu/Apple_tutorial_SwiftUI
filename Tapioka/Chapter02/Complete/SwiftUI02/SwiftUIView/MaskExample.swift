//
//  MaskExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/24.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct MaskExample : View {
    var body: some View {
        VStack{
            Image("sakura_image")
        
            Spacer().frame(height:30)
            
            Image("hacking_to_the_swift")
            
            Spacer().frame(height:30)
            
            Image("sakura_image")
                .mask(Image("hacking_to_the_swift"))
            
            Spacer().frame(height:30)
            
            Image("sakura_image")
                .mask(Color(red: 0.0,
                            green: 0.0,
                            blue: 0.0,
                            opacity: 0.3))
        }

    }
}

#if DEBUG
struct MaskExample_Previews : PreviewProvider {
    static var previews: some View {
        MaskExample()
    }
}
#endif
