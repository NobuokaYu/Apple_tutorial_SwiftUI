import SwiftUI

fileprivate
struct ContentView: View {
    @State private var showingSwiftUI = false

    var body: some View {

        VStack {
            Toggle(isOn: $showingSwiftUI){
                Text("Animetion Toggle label")
            }

            if showingSwiftUI {
                Text("Hello SwiftUI!")
            }
        }.padding()

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

struct NoBindingAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct NoBindingAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        NoBindingAnimationExample()
    }
}

