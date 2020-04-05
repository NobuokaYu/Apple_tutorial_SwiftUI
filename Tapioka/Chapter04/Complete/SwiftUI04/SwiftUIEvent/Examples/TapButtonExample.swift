import SwiftUI

fileprivate
struct ContentView: View {
    @State var showDetails = false
    var body: some View {
        VStack {
            Button(action: {
                self.showDetails.toggle()
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

struct TapButtonExample: View {
    var body: some View {
        ContentView()
    }
}

struct TapButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        TapButtonExample()
    }
}

