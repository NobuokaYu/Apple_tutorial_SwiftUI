import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Image("sakura_image")
            .cornerRadius(10)

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

struct CornerRadiusExample: View {
    var body: some View {
        ContentView()
    }
}

struct CornerRadiusExample_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadiusExample()
    }
}

