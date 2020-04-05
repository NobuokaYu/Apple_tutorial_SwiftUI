//
//  GradientStopExample.swift
//  SwiftUI02
//
//  Created by 金田浩明 on 2019/07/27.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct GradientStopExample : View {
    var body: some View {
        let gradient = Gradient(stops: [
            .init(color: .red, location: 0.0),
                .init(color: .white, location: 0.3),
                .init(color: .green, location: 1.0),
        ])
        let linear =  LinearGradient(gradient:gradient,
                       startPoint: .trailing ,
                       endPoint: .leading)

        return Text("Hacking to the Swift!")
            .font(.largeTitle)
            .padding()
            .background(linear, cornerRadius: 0)
    }
}

#if DEBUG
struct GradientStopExample_Previews : PreviewProvider {
    static var previews: some View {
        GradientStopExample()
    }
}
#endif
