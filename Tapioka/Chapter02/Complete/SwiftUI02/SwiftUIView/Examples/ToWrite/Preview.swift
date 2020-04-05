//
//  Preview.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/18.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct Preview: View {
    var body: some View {
        Text("Hello World!")
    }
}

#if DEBUG
struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview().background(Color.gray)
    }
}
#endif
