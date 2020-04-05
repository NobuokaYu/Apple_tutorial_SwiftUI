//
//  CornerRadiusExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct CornerRadiusExample: View {
    var body: some View {
        Image("sakura_image")
            .cornerRadius(10)

    }
}

#if DEBUG
struct CornerRadiusExample_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadiusExample()
    }
}
#endif
