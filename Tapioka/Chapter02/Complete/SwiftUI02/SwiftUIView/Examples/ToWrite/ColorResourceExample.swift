//
//  ColorResourceExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ColorResourceExample: View {
    var body: some View {
        NavigationView {

            VStack{
                Color("my_primary")
                Color("my_secondary")
            }
            .navigationBarTitle(Text(""))
            .navigationBarHidden(true)
        }

    }
}

#if DEBUG
struct ColorResourceExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorResourceExample()
            ColorResourceExample()
                .environment(\.colorScheme, .dark)
        }
        .previewDevice("iPhone SE")
        .previewLayout(.fixed(width: 400,
                              height: 200))
    }
}
#endif
