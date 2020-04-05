//
//  FontExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct FontExample: View {
    var body: some View {
        VStack {
            Text("SwiftUIを学ぶ")
                .font(.largeTitle)
            Spacer()
            Text("最も最適なプラン")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Spacer()
            Text("最も最適なプラン")
                .font(.largeTitle)
                .background(Color.yellow)
            Spacer()
        }
    }
}

#if DEBUG
struct FontExample_Previews: PreviewProvider {
    static var previews: some View {
        FontExample()
    }
}
#endif
