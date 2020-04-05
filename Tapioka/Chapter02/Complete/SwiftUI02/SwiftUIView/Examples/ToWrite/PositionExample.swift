//
//  PositionExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct PositionExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .position(x: 150, y: 150)

    }
}

#if DEBUG
struct PositionExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PositionExample()
            PositionExample()
                .background(Color.blue)
        }
    }
}
#endif
