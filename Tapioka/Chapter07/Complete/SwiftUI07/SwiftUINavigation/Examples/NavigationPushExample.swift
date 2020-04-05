import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("次のビューを表示").font(.system(size: 30))   //①
            }.navigationBarTitle("First View")
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

struct NavigationPushExample: View {
    var body: some View {
        ContentView()
    }
}

struct NavigationPushExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPushExample()
    }
}

