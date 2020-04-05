// 


import SwiftUI

struct CurveShape: Shape {

    func path(in rect: CGRect) -> Path {
        let pt1 = CGPoint(x:0,y:0)
        
        let pt2 = CGPoint(x: rect.width/2,
                          y: rect.height/2)
        let c21 = CGPoint(x: rect.width*3/4,
                          y: 0)
        let c22 = CGPoint(x: rect.width*3/4,
                          y: rect.height/4)
        
        let pt3 = CGPoint(x: rect.width,
                          y: rect.height)
        let c31 = CGPoint(x: rect.width/4,
                          y: rect.height*3/4)
        let c32 = CGPoint(x: rect.width*3/4,
                          y: rect.height)

        return Path { path in
            path.move(to: pt1)
            path.addCurve(to: pt2,
                          control1: c21,
                          control2: c22)
            path.addCurve(to: pt3,
                          control1: c31,
                          control2: c32)
        }
    }
}

struct CurveShape_Previews: PreviewProvider {
    static var previews: some View {
        CurveShape()
    }
}
