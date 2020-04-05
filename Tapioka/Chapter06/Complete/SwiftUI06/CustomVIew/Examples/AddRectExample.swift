import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                RectShape().fill(Color.red)
                RectShape().fill(Color.blue)
            }
            HStack {
                RectShape().fill(Color.yellow)
                RectShape().fill(Color.green)
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

struct AddRectExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddRectExample_Previews: PreviewProvider {
    static var previews: some View {
        AddRectExample()
    }
}

