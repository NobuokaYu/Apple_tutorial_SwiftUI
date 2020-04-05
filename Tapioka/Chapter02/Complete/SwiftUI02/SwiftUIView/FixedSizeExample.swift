//
//  FixedSizeExample.swift
//  Single View App
//
//  Created by 金田浩明 on 2019/07/23.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct FixedSizeExample : View {
    var body: some View {
        VStack {
            Spacer()

            Text("この一行テキスト、枠に収まらないぞ。")
                .frame(width: 200, height: 100)
                .border(Color.blue)
            
            Spacer()
            Text("この一行テキスト、枠に収まらないぞ。")
                .fixedSize()
                .frame(width: 200, height: 100)
                .border(Color.blue)

            
            Spacer()
            
            Text("この一行テキスト、枠に収まらないぞ。").lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                
                .frame(width: 50, height: 50)
                .border(Color.blue)
            
        }
    }
}

#if DEBUG
struct FixedSizeExample_Previews : PreviewProvider {
    static var previews: some View {
        FixedSizeExample()
    }
}
#endif
