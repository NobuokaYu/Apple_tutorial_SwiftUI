import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello SwiftUI!")
                .navigationBarTitle("Navigationタイトル")
            Text("メニューを表示するには右へスワイプします")
        }
    }
}
struct _ContentView: View {
    var body: some View {
        ContentView().navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
