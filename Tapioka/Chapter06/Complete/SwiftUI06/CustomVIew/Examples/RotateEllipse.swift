import SwiftUI

struct RotateEllipse: Shape {
    var rotations = 5

    func path(in rect: CGRect) -> Path {
        Path { path in
            let amount = .pi / CGFloat(rotations)
            let transform = CGAffineTransform(rotationAngle: amount)
            for _ in 0...rotations {
                path.addEllipse(in: CGRect(x: -rect.width/8,
                                           y: -rect.height/2,
                                           width: rect.width/4,
                                           height: rect.height))
                path = path.applying(transform)
            }
            let movetrans = CGAffineTransform(translationX: rect.width/2,
                                              y: rect.height/2)
            path = path.applying(movetrans)
        }
    }
}

struct RotateEllipse_Previews: PreviewProvider {
    static var previews: some View {
        RotateEllipse()
    }
}
