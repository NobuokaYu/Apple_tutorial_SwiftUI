//
//  LightDark.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/14.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct LightDarkExample : View {
    var body: some View {
        NavigationView {
            VStack{
                Text("SwiftUI").font(.largeTitle)
                    .foregroundColor(.primary)
                Text("より優れたAppを、より少ないコードで。")
                    .foregroundColor(.secondary)
            }
            .navigationBarTitle(Text(""))
            .navigationBarHidden(true)
        }

    }
}

#if DEBUG
struct LightDarkExample_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LightDarkExample()
            LightDarkExample()
                .environment(\.colorScheme, .dark)
        }
        .previewDevice("iPhone SE")
        .previewLayout(.fixed(width: 400,
                              height: 200))

    }
}
#endif
