import SwiftUI

fileprivate
struct ContentView: View {

    var body: some View {
        VStack(alignment: .leading){
            Text("Delicious")
            Text("tapioca")
                .alignmentGuide(.leading){ d in d[.leading] + 10}
            Text("Milk Tea")
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

struct SubscriptExample: View {
    var body: some View {
        ContentView()
    }
}

struct SubscriptExample_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptExample()
    }
}
