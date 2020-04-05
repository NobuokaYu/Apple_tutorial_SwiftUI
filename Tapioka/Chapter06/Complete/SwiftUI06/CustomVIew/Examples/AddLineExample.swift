import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            LineShape()
                .fill(Color.red)

            LineShape()
                .stroke(style: .init(lineWidth: 10))
                .fill(Color.red)
        }
        .padding(40)
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

struct AddLineExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddLineExample_Previews: PreviewProvider {
    static var previews: some View {
        AddLineExample()
    }
}

