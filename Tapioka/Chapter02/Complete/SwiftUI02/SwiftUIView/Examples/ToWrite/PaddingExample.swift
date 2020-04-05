//
//  PaddingExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct PaddingExample1: View {
    var body: some View {
        ZStack {
            Text("Hello SwiftUI!")
                .padding(16)
            Text("Hello SwiftUI!")
                .padding()
        }
    }
}

struct PaddingExample: View {
    var body: some View {
        VStack {
            Spacer()

            Text("Hello SwiftUI!")
                .foregroundColor(Color.white)
                .background(Color.black)
                .padding(50)
                .background(Color.yellow)
            
            Spacer()

            Text("Hello SwiftUI!")
                .foregroundColor(Color.white)
                .background(Color.black)
                .padding(.init(top: 10,
                               leading: 30,
                               bottom: 90,
                               trailing: 70))
                .background(Color.yellow)
        }

    }
}

#if DEBUG
struct PaddingExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PaddingExample1()
            PaddingExample()
            
        }

    }
}
#endif
