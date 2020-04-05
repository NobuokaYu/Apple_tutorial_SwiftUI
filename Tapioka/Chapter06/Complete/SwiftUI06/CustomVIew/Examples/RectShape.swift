import SwiftUI

struct RectShape: Shape {

    func path(in rect: CGRect) -> Path {

        return Path { path in

            path.addRect(
                CGRect(
                    x: 0,
                    y: 0,
                    width: rect.width/2,
                    height: rect.height/2)
            )
            path.addRect(
                CGRect(
                    x: rect.width/2,
                    y: rect.height/2,
                    width: rect.width/2,
                    height: rect.height/2)
            )
        }
    }
}

struct RectShape_Previews: PreviewProvider {
    static var previews: some View {
        RectShape()
    }
}
