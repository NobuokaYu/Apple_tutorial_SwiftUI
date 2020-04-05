import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Text("Left")
                        .frame(width: geometry.size.width * (1 / 3),
                               height: 50)
                        .background(Color.yellow)
                    Text("Right Side")
                        .frame(width: geometry.size.width * (2 / 3),
                               height: 50)
                        .background(Color.orange)
                }
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.fixed(width: 400, height: 80))
            ContentView()
                .previewLayout(.fixed(width: 200, height: 80))
        }
    }
}
*/


// MARK: サンプル実行用コード

struct GeometryReaderExample: View {
    var body: some View {
        ContentView()
    }
}

struct GeometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GeometryReaderExample()
                .previewLayout(.fixed(width: 400, height: 80))
            GeometryReaderExample()
                .previewLayout(.fixed(width: 200, height: 80))
        }

    }
}

