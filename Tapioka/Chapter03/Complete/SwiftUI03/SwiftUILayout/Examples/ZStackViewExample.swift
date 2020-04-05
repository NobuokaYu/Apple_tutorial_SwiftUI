import SwiftUI

fileprivate
struct ContentView : View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("big-image")
            Text("SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.top)
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

struct ZStackViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct ZStackViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ZStackViewExample()
    }
}
