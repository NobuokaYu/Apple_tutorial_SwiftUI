import SwiftUI

struct RectsShape: Shape {

    func path(in rect: CGRect) -> Path {
        
        let rects = [
            CGRect(x: 0,
                   y: 0,
                   width: rect.width/2,
                   height: rect.height/2),
            CGRect(x: rect.width/2,
                   y: rect.height/2,
                   width: rect.width/2,
                   height: rect.height/2),
        ]
        
        return Path { path in
            path.addRects(rects)
        }
    }
}

struct RectsShape_Previews: PreviewProvider {
    static var previews: some View {
        RectsShape()
    }
}
