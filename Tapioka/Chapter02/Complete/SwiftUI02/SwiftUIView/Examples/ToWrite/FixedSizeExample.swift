//
//  FixedSizeExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct FixedSizeExample: View {
    var body: some View {
        VStack {
            Text("この一行テキスト、枠に収まらないぞ。")
                .lineLimit(1)
                .frame(width: 200, height: 100)
                .border(Color.blue)
            
            Spacer().frame(height:30)
            Text("この一行テキスト、枠に収まらないぞ。")
                .lineLimit(1)
                .fixedSize()
                .frame(width: 200, height: 100)
                .border(Color.blue)


        }

    }
}

#if DEBUG
struct FixedSizeExample_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeExample()
    }
}
#endif
