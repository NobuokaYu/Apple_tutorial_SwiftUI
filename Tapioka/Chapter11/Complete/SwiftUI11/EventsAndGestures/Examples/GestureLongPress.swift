import SwiftUI

fileprivate
struct ContentView: View {
    @State var scale: CGFloat = 1.0
    var body: some View {
        Image("big-image")
            .scaleEffect(scale)
            .gesture(
                LongPressGesture(minimumDuration: 5)
                    .onEnded{ _ in 
                        withAnimation(.linear(duration: 1)) {
                            self.scale -= 0.1
                        }
                    }
            )
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

struct GestureLongPress: View {
    var body: some View {
        ContentView()
    }
}

struct GestureLongPress_Previews: PreviewProvider {
    static var previews: some View {
        GestureLongPress()
    }
}

