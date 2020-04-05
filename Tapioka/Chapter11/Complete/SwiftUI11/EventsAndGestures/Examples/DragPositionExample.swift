import SwiftUI

fileprivate
struct ContentView: View {
    @State var position: CGSize = CGSize(width: 200, height: 400)
    var body: some View {
        VStack {
            Image("big-image")
                .position(x: position.width, y: position.height)
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.position = CGSize(
                                width: value.startLocation.x
                                    + value.translation.width,
                                height: value.startLocation.y
                                    + value.translation.height
                            )
                        }
                        .onEnded{ value in
                            self.position = CGSize(
                                width: value.startLocation.x
                                    + value.translation.width,
                                height: value.startLocation.y
                                    + value.translation.height
                            )
                        }
                    )
            Spacer()
            Text("translation \(position.width),\(position.height)")
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

struct DragPositionExample: View {
    var body: some View {
        ContentView()
    }
}

struct DragPositionExample_Previews: PreviewProvider {
    static var previews: some View {
        DragPositionExample()
    }
}

