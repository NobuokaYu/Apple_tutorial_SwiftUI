// 


import SwiftUI

struct MyEllipse: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.addEllipse(
                in: CGRect(x: 0,
                           y: 0,
                           width: rect.width,
                           height: rect.height))
        }
    }
}

struct MyEllipse_Previews: PreviewProvider {
    static var previews: some View {
        MyEllipse()
    }
}
