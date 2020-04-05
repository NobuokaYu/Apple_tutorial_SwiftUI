//
//  AlignmentGuideExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct AlignmentGuideExample : View {
    var body: some View {
        VStack{
            Spacer()
        Text("Hello SwiftUI!")
            //.frame(width: 150, height: 150).border(Color.blue)
            .alignmentGuide(.trailing) { d in
                d[.bottom] / 2
        }
        //.frame(width: 200, height: 200).border(Color.red)
            Spacer()
        }.border(Color.yellow)
    }
}

#if DEBUG
struct AlignmentGuideExample_Previews : PreviewProvider {
    static var previews: some View {
        AlignmentGuideExample()
    }
}
#endif
