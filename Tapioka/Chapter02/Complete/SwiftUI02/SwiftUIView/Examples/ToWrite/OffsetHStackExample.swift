//
//  OffsetHStackExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/28.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OffsetHStackExample: View {
    var body: some View {
        HStack {
            Text("SwiftUI")
                .border(Color.red)
                .offset(x:30, y:30)
            Text("SwiftUI")
            Text("SwiftUI")

        }
        .border(Color.blue)
    }
}

struct OffsetHStackExample_Previews: PreviewProvider {
    static var previews: some View {
        OffsetHStackExample()
    }
}
