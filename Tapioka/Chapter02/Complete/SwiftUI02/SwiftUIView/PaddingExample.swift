//
//  PaddingExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/24.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct PaddingExample : View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI!")
                .foregroundColor(Color.white)
                .background(Color.black)
                .padding(50)
                .background(Color.yellow)
            
            Spacer().frame(height: 50)
            
            Text("Hello SwiftUI!")
                .foregroundColor(Color.white)
                .background(Color.black)
                .padding(.init(top: 10,
                               leading: 30,
                               bottom: 90,
                               trailing: 70))
                .background(Color.yellow)
            
        }
        
    }
}

#if DEBUG
struct PaddingExample_Previews : PreviewProvider {
    static var previews: some View {
        PaddingExample()
    }
}
#endif
