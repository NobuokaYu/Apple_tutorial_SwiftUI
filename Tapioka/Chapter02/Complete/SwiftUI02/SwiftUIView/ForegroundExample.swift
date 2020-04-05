//
//  ForegroundExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/24.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct ForegroundExample : View {
    var body: some View {
        Circle()
            .frame(width: 150,
                   height: 150)
            .foregroundColor(Color.green)
    }
}

#if DEBUG
struct ForegroundExample_Previews : PreviewProvider {
    static var previews: some View {
        ForegroundExample()
    }
}
#endif
