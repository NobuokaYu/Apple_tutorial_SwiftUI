import SwiftUI

fileprivate
struct ContentView: View {
    @State var degree: Double = 0
    @State var x: CGFloat = 0.0
    @State var y: CGFloat = 0.0
    @State var z: CGFloat = 0.0
    @State var a: UnitPoint = .center
    @State var az: CGFloat = 0.0
    @State var p: CGFloat = 1
    var body: some View {
        VStack {
            Image("big-image")
                .rotation3DEffect(.init(degrees: degree),
                                  axis: (x: x,
                                         y: y,
                                         z: z),
                                  anchor: a,
                                  anchorZ: az,
                                  perspective: p)
            VStack {
                VStack(alignment:.leading) {
                    Text("a\(degree)")
                    Slider(value: $degree,
                           in: -180...180)
                }
                VStack(alignment:.leading) {
                    Text("x\(x)")
                    Slider(value: $x,
                           in: -1...1)
                }
                VStack(alignment:.leading) {
                    Text("y\(y)")
                    Slider(value: $y,
                           in: -1...1)
                }
                VStack(alignment:.leading) {
                    Text("z\(z)")
                    Slider(value: $z,
                           in: -1...1)
                }
                VStack(alignment:.leading) {
                    Text("az\(az)")
                    Slider(value: $az,
                           in: -1000...1000)
                }
                VStack(alignment:.leading) {
                    Text("p\(p)")
                    Slider(value: $p,
                           in: -1...1)
                }
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct Effect3DExample: View {
    var body: some View {
        ContentView()
    }
}

struct Effect3DExample_Previews: PreviewProvider {
    static var previews: some View {
        Effect3DExample()
    }
}
