//
//  RelativeSizeView.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct RelativeSizeView : View {
    var body: some View {
        VStack {
            Spacer()
        Color.pink
            .relativeSize(width: 0.75, height: 0.75)
            .frame(width: 200, height: 100)
            .border(Color.blue)
            Spacer()
            Color.pink
                .frame(width: 200, height: 100)
                .border(Color.blue)
            Spacer()
        }
    }
}

#if DEBUG
struct RelativeSizeView_Previews : PreviewProvider {
    static var previews: some View {
        RelativeSizeView()
    }
}
#endif
