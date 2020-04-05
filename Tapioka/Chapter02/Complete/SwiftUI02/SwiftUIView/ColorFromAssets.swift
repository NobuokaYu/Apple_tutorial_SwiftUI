//
//  ColorFromAssets.swift
//  SwiftUI02
//
//  Created by 金田浩明 on 2019/07/27.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ColorFromAssets : View {
    var body: some View {
        NavigationView {
            VStack{
                Color("my_primary")
                Color("my_secondary")
                
            }
        }
    }
}

#if DEBUG
struct ColorFromAssets_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ColorFromAssets()
            ColorFromAssets()
                .environment(\.colorScheme, .dark)
        }
    }
}
#endif
