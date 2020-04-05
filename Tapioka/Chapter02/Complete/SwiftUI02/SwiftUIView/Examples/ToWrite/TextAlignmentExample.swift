//
//  FontView.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/14.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct TextAlignmentExample : View {
    var body: some View {
        VStack {
            Spacer()
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(nil)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(nil)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Spacer()
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(nil)
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
            Spacer()
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(nil)
                .font(.largeTitle)
                .lineSpacing(50)
            Spacer()
        }
    }
}

#if DEBUG
struct TextAlignmentExample_Previews : PreviewProvider {
    static var previews: some View {
        TextAlignmentExample()
    }
}
#endif
