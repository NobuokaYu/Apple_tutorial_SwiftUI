//
//  FrameExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello World")
            Spacer()
            Text("Hello World Hello World Hello World Hello World Hello World Hello World")
                .lineLimit(1)
            Spacer()
            Text(String(repeating: "Hello World ", count: 20))
                .lineLimit(3)
            Spacer()
            Text(String(repeating: "Hello World ", count: 20))
                .lineLimit(nil)
            Spacer()
        }
    }
}

#if DEBUG
struct TextExample_Previews: PreviewProvider {
    static var previews: some View {
        TextExample()
    }
}
#endif
