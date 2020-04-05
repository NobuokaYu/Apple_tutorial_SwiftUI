//
//  OffsetExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OffsetExample: View {
            //@State var text = ""
    var body: some View {

        ZStack() {
            Text("Hello SwiftUI!")
                .offset(x: 50, y: 50)

            Text("Hello SwiftUI!")
                .foregroundColor(.gray)
            ArrowShape()
                .stroke(lineWidth: 1)
            .foregroundColor(.red)
            .frame(width: 50, height: 50)
            .offset(x: -30, y: 25)
        }


    }
}

#if DEBUG
struct OffsetExample_Previews: PreviewProvider {
    static var previews: some View {
        OffsetExample()
    }
}
#endif

struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: .init(x:5, y:10))
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: .init(x:-5, y:10))
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: .init(x:0, y:50))
            path.addLine(to: .init(x:-5, y:40))
            path.move(to: CGPoint(x:0, y:50))
            path.addLine(to: .init(x:5, y:40))

            
            path.move(to: CGPoint(x:0, y:60))
            path.addLine(to: .init(x:10, y:65))
            path.move(to: CGPoint(x:0, y:60))
            path.addLine(to: .init(x:10, y:55))
            path.move(to: CGPoint(x:0, y:60))
            path.addLine(to: .init(x:50, y:60))
            path.addLine(to: .init(x:40, y:65))
            path.move(to: .init(x:50, y:60))
            path.addLine(to: .init(x:40, y:55))

            
            
//            path.addLine(to: .init(x:scale * 70, y:scale * 100))
//            path.addLine(to: .init(x:scale * 80, y:scale * 20))
//            path.addLine(to: .init(x:scale * 20, y:scale * 20))
        }
    }
}
