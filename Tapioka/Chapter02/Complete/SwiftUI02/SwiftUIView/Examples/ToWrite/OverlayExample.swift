//
//  OverlayExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OverlayExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .background(Color.yellow)
            .overlay(
                Color.green
                    .offset(x:10,y:10))
            .overlay(
                Text("Hacking to the Swift")
                    .background(Color.pink)
                    .offset(x:20,y:20))

    }
}

#if DEBUG
struct OverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        OverlayExample()
    }
}
#endif
