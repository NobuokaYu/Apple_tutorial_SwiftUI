import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        var showDetails = false
        return VStack {
            Button(action: {
                showDetails.toggle()
            }) {
                Text("詳細表示")
            }

            if showDetails {
                Text("詳しくはWebで!")
                    .font(.largeTitle)
                    .lineLimit(nil)
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

struct TapButtonExampleNotWork: View {
    var body: some View {
        ContentView()
    }
}

struct TapButtonExampleNotWork_Previews: PreviewProvider {
    static var previews: some View {
        TapButtonExampleNotWork()
    }
}

