import SwiftUI

struct ArcShape: Shape {
    var start = 0.0
    var end = 360.0
    
    init(_ start:Double=0.0,_ end: Double=360.0) {
        self.start = start
        self.end = end
    }
    
    func path(in rect: CGRect) -> Path {

        let radius = min(rect.width, rect.height) / 2

        return Path { path in
            path.addArc(center: CGPoint(x: rect.width/2,
                                        y: rect.height/2),
                        radius: radius,
                        startAngle: .degrees(start),
                        endAngle: .degrees(end),
                        clockwise: false)
            path.addLine(to: CGPoint(x: rect.width/2,
                                     y: rect.height/2))
            path.closeSubpath()
        }
    }
}

struct ArcShape_Previews: PreviewProvider {
    static var previews: some View {
        ArcShape()
    }
}
