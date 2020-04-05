import SwiftUI

fileprivate
struct ContentView: View {
    @State var offset: CGSize = .zero
    var body: some View {
        Image("big-image")
            .offset(offset)
            .gesture(DragGesture(coordinateSpace: .local)
                .onChanged{ value in
                    self.offset = CGSize(
                        width: value.startLocation.x
                            + value.translation.width,
                        height: value.startLocation.y
                            + value.translation.height
                    )
                }
                .onEnded{ value in
                    withAnimation(.easeOut) {
                        self.offset = .zero
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

struct DragOffsetExample: View {
    var body: some View {
        ContentView()
    }
}

struct DragOffsetExample_Previews: PreviewProvider {
    static var previews: some View {
        DragOffsetExample()
    }
}

