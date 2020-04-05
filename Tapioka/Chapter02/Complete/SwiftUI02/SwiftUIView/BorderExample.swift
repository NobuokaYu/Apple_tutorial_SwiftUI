//
//  BorderExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct BorderExample : View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width: 100, height: 100)
            .border(Color.blue,
                    width: 1,
                    cornerRadius: 15)
    }
}

#if DEBUG
struct BorderExample_Previews : PreviewProvider {
    static var previews: some View {
        BorderExample()
    }
}
#endif
