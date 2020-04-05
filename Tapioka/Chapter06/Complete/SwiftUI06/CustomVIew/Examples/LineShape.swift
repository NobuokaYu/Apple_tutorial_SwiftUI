import SwiftUI

struct LineShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(
                x: rect.width/2,
                y: rect.height/2))
            path.addLine(to: CGPoint(
                x: 0,
                y: rect.height*1/4))
            path.addLine(to: CGPoint(
                x: rect.width,
                y: rect.height*1/4))
            path.addLine(to: CGPoint(
                x: rect.width,
                y: rect.height*3/4))
            path.addLine(to: CGPoint(
                x: 0,
                y: rect.height*3/4))
            path.closeSubpath()
        }
    }
}

struct LineShape_Previews: PreviewProvider {
    static var previews: some View {
        LineShape()
    }
}
