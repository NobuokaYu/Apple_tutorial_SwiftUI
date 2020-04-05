import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        List {
            Text("壱岐島")
            HStack {
                Text("伊々")
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
            }
            Text("ターリー屋")
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

struct StaticListExample2: View {
    var body: some View {
        ContentView()
    }
}

struct StaticListExample2_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample2()
    }
}

