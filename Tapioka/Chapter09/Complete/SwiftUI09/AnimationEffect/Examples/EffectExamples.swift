import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello SwiftUI!")
                .background(Color.yellow)
                .scaleEffect(3)
            Spacer()
            Text("Hello SwiftUI!")
                .background(Color.yellow)
                .scaleEffect(x:1,y:4)
            Spacer()
            Text("Hello SwiftUI!")
                .background(Color.yellow)
                .scaleEffect(2, anchor: .bottomTrailing)
            Spacer()
            Text("Hello SwiftUI!")
                .background(Color.yellow)
                .rotationEffect(.init(degrees: 45))
            Spacer()
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

struct EffectExamples: View {
    var body: some View {
        ContentView()
    }
}

struct EffectExamples_Previews: PreviewProvider {
    static var previews: some View {
        EffectExamples()
    }
}
