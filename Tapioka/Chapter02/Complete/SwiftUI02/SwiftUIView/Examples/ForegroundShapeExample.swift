import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(Color.yellow)
            .background(Color.black)

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

struct ForegroundShapeExample: View {
    var body: some View {
        ContentView()
    }
}

struct ForegroundShapeExample_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundShapeExample()
    }
}

