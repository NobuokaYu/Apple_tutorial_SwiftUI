//
//  PositionExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct PositionExample : View {
    var body: some View {
        VStack{

        Text("Hello SwiftUI!")
            .background(Color.yellow)
            .position(x: 150, y: 150)
            .border(Color.blue)
            .frame(width: 150, height: 150)
            .border(Color.blue)
        }
    }
}

#if DEBUG
struct PositionExample_Previews : PreviewProvider {
    static var previews: some View {
        PositionExample()
    }
}
#endif
