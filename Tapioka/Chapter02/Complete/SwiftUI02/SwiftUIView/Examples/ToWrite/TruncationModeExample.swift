//
//  TruncationModeExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct TruncationModeExample: View {
    var body: some View {
        VStack{
            Spacer()
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(1)
                .truncationMode(.middle)
            Spacer().frame(height:20)
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(1)
                .truncationMode(.head)
            Spacer().frame(height:20)
            Text("これは非常に長い文字列で、幅広いスマートフォンにも収まりません。")
                .lineLimit(1)
                .truncationMode(.tail)
            Spacer()
        }
    }
}

#if DEBUG
struct TruncationModeExample_Previews: PreviewProvider {
    static var previews: some View {
        TruncationModeExample()
    }
}
#endif
