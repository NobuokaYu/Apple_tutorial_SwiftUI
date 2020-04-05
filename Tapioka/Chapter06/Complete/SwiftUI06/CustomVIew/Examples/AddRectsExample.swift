import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                RectsShape().fill(Color.red)
                RectsShape().fill(Color.blue)
            }
            HStack {
                RectsShape().fill(Color.yellow)
                RectsShape().fill(Color.green)
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

struct AddRectsExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddRectsExample_Previews: PreviewProvider {
    static var previews: some View {
        AddRectsExample()
    }
}

