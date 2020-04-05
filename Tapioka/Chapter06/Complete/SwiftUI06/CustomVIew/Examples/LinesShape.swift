import SwiftUI

struct LinesShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let points = [
            CGPoint(x: rect.width * 0.60, y: rect.height * 0.00),
            CGPoint(x: rect.width * 0.20, y: rect.height * 0.60),
            CGPoint(x: rect.width * 0.50, y: rect.height * 0.60),
            CGPoint(x: rect.width * 0.40, y: rect.height * 1.00),
            CGPoint(x: rect.width * 0.80, y: rect.height * 0.40),
            CGPoint(x: rect.width * 0.50, y: rect.height * 0.40),
        ]
        
        return Path { path in
            path.addLines(points)
            path.closeSubpath()
        }
    }
}

struct LinesShape_Previews: PreviewProvider {
    static var previews: some View {
        LinesShape()
    }
}
