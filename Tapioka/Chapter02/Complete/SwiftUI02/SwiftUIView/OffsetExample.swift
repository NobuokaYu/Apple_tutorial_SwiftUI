//
//  OffsetExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OffsetExample : View {
    var body: some View {
        Text("Hello SwiftUI!")
            .border(Color.blue)
            .offset(x: 50, y: 50)
            .border(Color.red)
    }
}

#if DEBUG
struct OffsetExample_Previews : PreviewProvider {
    static var previews: some View {
        OffsetExample()
    }
}
#endif
