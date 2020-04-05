import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Text("Delicious").font(.caption)
                Image("tapioca")
                Text("Tapioca Milk Tea").font(.largeTitle)
            }
            HStack(alignment: .lastTextBaseline) {
                Text("Delicious").font(.caption)
                Image("tapioca")
                Text("Tapioca Milk Tea").font(.largeTitle)
            }
            HStack(alignment: .lastTextBaseline) {
                Text("Delicious").font(.caption)
                Image("tapioca")
                    .alignmentGuide(.lastTextBaseline) { d in d.height * 0.87 }
                Text("Tapioca Milk Tea").font(.largeTitle)
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

struct AlignmentExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlignmentExample_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentExample()
    }
}
