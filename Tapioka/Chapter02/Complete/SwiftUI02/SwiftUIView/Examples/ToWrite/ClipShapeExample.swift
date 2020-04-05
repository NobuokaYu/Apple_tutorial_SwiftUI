//
//  ClipShapeExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ClipShapeExample: View {
    var body: some View {
        Image("sakura_image")
            .clipShape(Circle())

    }
}

#if DEBUG
struct ClipShapeExample_Previews: PreviewProvider {
    static var previews: some View {
        ClipShapeExample()
    }
}
#endif
