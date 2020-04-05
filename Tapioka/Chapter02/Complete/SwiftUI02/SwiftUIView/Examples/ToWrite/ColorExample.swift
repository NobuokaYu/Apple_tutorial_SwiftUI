//
//  ColorView.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/14.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ColorExample : View {
    var body: some View {
        VStack {
            VStack {
                Color.clear
                Color.black
                Color.white
                Color.gray
                Color.red
                Color.green
                Color.blue

            }
            VStack {
                Color.orange
                Color.yellow
                Color.pink
                Color.purple
                Color.primary
                Color.secondary
                Spacer()
            }
        }
    }
}

#if DEBUG
struct ColorExample_Previews : PreviewProvider {
    static var previews: some View {
        ColorExample()
    }
}
#endif
