import SwiftUI

let gradient = Gradient(colors: [.blue, .white])

let linear = LinearGradient(gradient:gradient,
                            startPoint: .top,
                            endPoint: .bottom)

let gradientStop = Gradient(stops: [
        .init(color: .red, location: 0.0),
        .init(color: .white, location: 0.3),
        .init(color: .green, location: 1.0),
])

let linearStop =  LinearGradient(gradient:gradientStop,
                                 startPoint: .trailing,
                                 endPoint: .leading)

let spectrum = Gradient(colors: [
    .red, .yellow, .green, .blue, .purple, .red
])
let conic = AngularGradient(gradient: spectrum,
                            center: .center,
                            angle: .degrees(-90))
let conicTop = AngularGradient(gradient: spectrum,
                               center: .top,
                               angle: .degrees(-90))

let radial = RadialGradient(gradient: spectrum,
                            center: .center,
                            startRadius:0,
                            endRadius:70)

struct GradientExample : View {
    var body: some View {
        VStack(spacing: 40) {
            Image("face_icon_image")
                .background(linear)
            Text("Hacking to the Swift!")
                .padding()
                .background(linearStop)
            Text("Hello World!")
                .foregroundColor(.white)
                .frame(width: 100.0, height: 100.0)
                .background(conic)
            Text("Hello World!")
                .foregroundColor(.white)
                .frame(width: 100.0, height: 100.0)
                .background(conicTop)
            Rectangle()
                .fill(radial)
                .frame(width: 100, height: 100)
        }
    }
}

#if DEBUG
struct GradientExample_Previews : PreviewProvider {
    static var previews: some View {
        GradientExample()
    }
}
#endif
