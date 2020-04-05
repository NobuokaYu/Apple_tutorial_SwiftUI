//
//  BackgroundExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct BackgroundExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .font(.largeTitle)
            .background(
                Image("face_icon_image"))

    }
}

#if DEBUG
struct BackgroundExample_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundExample()
    }
}
#endif
